/*
Copyright (C) 2018,2019 Jim Jiang <jim@lotlab.org>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/
#include <strings.h>
#include "action_layer.h"
#include "util.h"

#include "app_error.h"
#include "ble.h"
#include "ble_hid_descriptor.h"
#include "ble_hids.h"

#include "ble_config.h"
#include "ble_hid_service.h"
#include "keyboard_fn.h"
#include "hid_configuration.h"
#include "host.h"
#include "usb_comm.h"
#include "ble_comm.h"


#define MAX_BUFFER_ENTRIES 5 /**< Number of elements that can be enqueued */
#define BASE_USB_HID_SPEC_VERSION 0x0101 /**< Version number of base USB HID Specification implemented by this application. */

#ifdef NKRO_ENABLE
#define INPUT_REP_NKRO_ID 0x04 /**< Id of reference to Keyboard Input Report. */
#endif
#define INPUT_REP_KEYBOARD_ID 0x7f /**< Id of reference to Keyboard Input Report. */
#define OUTPUT_REP_KEYBOARD_ID 0x7f /**< Id of reference to Keyboard Output Report. */
#define INPUT_REP_DATA_ID 0x3f /**< Id of reference to Data Input Report. */
#define OUTPUT_REP_DATA_ID 0x3f /**< Id of reference to Data Output Report. */

#ifdef NKRO_ENABLE
#define INPUT_REPORT_LEN_NKRO 28 /**< Maximum length of the Input Report characteristic. */
#endif
#define INPUT_REPORT_LEN_KEYBOARD 8 /**< Maximum length of the Input Report characteristic. */
#define OUTPUT_REPORT_LEN_KEYBOARD 1 /**< Maximum length of Output Report. */
#define INPUT_REPORT_LEN_MOUSE 5
#define INPUT_REPORT_LEN_SYSTEM 2
#define INPUT_REPORT_LEN_CONSUMER 2
#define INPUT_REPORT_LEN_DATA 28
#define OUTPUT_REPORT_LEN_DATA 28

#define INPUT_REP_INDEX_INVALID 0xFF /** Invalid index **/

enum input_report_index {
    INPUT_REP_KBD_INDEX,
#ifdef MOUSEKEY_ENABLE
    INPUT_REP_MOUSE_INDEX,
#endif
#ifdef EXTRAKEY_ENABLE
    INPUT_REP_SYSTEM_INDEX,
    INPUT_REP_CONSUMER_INDEX,
#endif
#ifdef NKRO_ENABLE
    INPUT_REP_NKRO_INDEX,
#endif
    INPUT_REP_DATA_INDEX,
    INPUT_REP_COUNT
};

enum output_report_index {
    OUTPUT_REP_KBD_INDEX,
    OUTPUT_REP_DATA_INDEX,
    OUTPUT_REP_COUNT
};

#ifndef NKRO_ENABLE
#define INPUT_REP_NKRO_INDEX INPUT_REP_INDEX_INVALID
#endif

#ifndef MOUSEKEY_ENABLE
#define INPUT_REP_MOUSE_INDEX INPUT_REP_INDEX_INVALID
#endif

#ifndef EXTRAKEY_ENABLE
#define INPUT_REP_SYSTEM_INDEX INPUT_REP_INDEX_INVALID
#define INPUT_REP_CONSUMER_INDEX INPUT_REP_INDEX_INVALID
#endif

/**
 * @brief HID Report Index Lookup table
 *
 * Mapping the internal ID to HID report id
 *
 */
uint8_t hid_report_map_table[] = {
    INPUT_REP_KBD_INDEX,
    INPUT_REP_MOUSE_INDEX,
    INPUT_REP_SYSTEM_INDEX,
    INPUT_REP_CONSUMER_INDEX,
    INPUT_REP_NKRO_INDEX,
    INPUT_REP_DATA_INDEX,
};

bool m_ble_in_report_mode = true; /**< Current protocol mode. */

/**Buffer queue access macros
 *
 * @{ */
/** Initialization of buffer list */
#define BUFFER_LIST_INIT()     \
    do {                       \
        buffer_list.rp = 0;    \
        buffer_list.wp = 0;    \
        buffer_list.count = 0; \
    } while (0)

/** Provide status of data list is full or not */
#define BUFFER_LIST_FULL() \
    ((MAX_BUFFER_ENTRIES == buffer_list.count - 1) ? true : false)

/** Provides status of buffer list is empty or not */
#define BUFFER_LIST_EMPTY() \
    ((0 == buffer_list.count) ? true : false)

#define BUFFER_ELEMENT_INIT(i)                 \
    do {                                       \
        buffer_list.buffer[(i)].p_data = NULL; \
    } while (0)

/** @} */

/** Abstracts buffer element */
typedef struct hid_key_buffer {
    uint8_t index; /**< Report Index */
    uint8_t data_len; /**< Total length of data */
    uint8_t* p_data; /**< Scanned key pattern */
    ble_hids_t* p_instance; /**< Identifies peer and service instance */
} buffer_entry_t;

STATIC_ASSERT(sizeof(buffer_entry_t) % 4 == 0);

/** Circular buffer list */
typedef struct
{
    buffer_entry_t buffer[MAX_BUFFER_ENTRIES]; /**< Maximum number of entries that can enqueued in the list */
    uint8_t rp; /**< Index to the read location */
    uint8_t wp; /**< Index to write location */
    uint8_t count; /**< Number of elements in the list */
} buffer_list_t;

STATIC_ASSERT(sizeof(buffer_list_t) % 4 == 0);

static buffer_list_t buffer_list; /**< List to enqueue not just data to be sent, but also related information like the handle, connection handle etc */
BLE_HIDS_DEF(m_hids, /**< Structure used to identify the HID service. */
    NRF_SDH_BLE_TOTAL_LINK_COUNT,
    INPUT_REPORT_LEN_KEYBOARD,
#ifdef MOUSEKEY_ENABLE
    INPUT_REPORT_LEN_MOUSE,
#endif
#ifdef EXTRAKEY_ENABLE
    INPUT_REPORT_LEN_SYSTEM,
    INPUT_REPORT_LEN_CONSUMER,
#endif
#ifdef NKRO_ENABLE
    INPUT_REPORT_LEN_NKRO,
#endif
    INPUT_REPORT_LEN_DATA,
    OUTPUT_REPORT_LEN_KEYBOARD,
    OUTPUT_REPORT_LEN_DATA);

uint8_t keyboard_led_val_ble;
uint8_t data_val_ble;

static void on_hids_evt(ble_hids_t* p_hids, ble_hids_evt_t* p_evt);

/**@brief Function for initializing HID Service.
 */
static void hids_init(ble_srv_error_handler_t err_handler)
{
    ret_code_t err_code;
    ble_hids_init_t hids_init_obj;

    static ble_hids_inp_rep_init_t input_report_array[INPUT_REP_COUNT];
    static ble_hids_outp_rep_init_t output_report_array[OUTPUT_REP_COUNT];

    memset((void*)input_report_array, 0, sizeof(ble_hids_inp_rep_init_t) * INPUT_REP_COUNT);
    memset((void*)output_report_array, 0, sizeof(ble_hids_outp_rep_init_t) * OUTPUT_REP_COUNT);

    // Initialize HID Service
    HID_REP_IN_SETUP(
        input_report_array[INPUT_REP_KBD_INDEX],
        INPUT_REPORT_LEN_KEYBOARD,
        INPUT_REP_KEYBOARD_ID);

    // keyboard led report
    HID_REP_OUT_SETUP(
        output_report_array[OUTPUT_REP_KBD_INDEX],
        OUTPUT_REPORT_LEN_KEYBOARD,
        OUTPUT_REP_KEYBOARD_ID);
#ifdef MOUSEKEY_ENABLE
    HID_REP_IN_SETUP(
        input_report_array[INPUT_REP_MOUSE_INDEX],
        INPUT_REPORT_LEN_MOUSE,
        REPORT_ID_MOUSE);
#endif
#ifdef EXTRAKEY_ENABLE
    // system input report
    HID_REP_IN_SETUP(
        input_report_array[INPUT_REP_SYSTEM_INDEX],
        INPUT_REPORT_LEN_SYSTEM,
        REPORT_ID_SYSTEM);
    // consumer input report
    HID_REP_IN_SETUP(
        input_report_array[INPUT_REP_CONSUMER_INDEX],
        INPUT_REPORT_LEN_CONSUMER,
        REPORT_ID_CONSUMER);
#endif
#ifdef NKRO_ENABLE
    HID_REP_IN_SETUP(
        input_report_array[INPUT_REP_NKRO_INDEX],
        INPUT_REPORT_LEN_NKRO,
        INPUT_REP_NKRO_ID);
#endif
    // Initialize HID Service
    HID_REP_IN_SETUP(
        input_report_array[INPUT_REP_DATA_INDEX],
        INPUT_REPORT_LEN_DATA,
        INPUT_REP_DATA_ID);

    // keyboard led report
    HID_REP_OUT_SETUP(
        output_report_array[OUTPUT_REP_DATA_INDEX],
        OUTPUT_REPORT_LEN_DATA,
        OUTPUT_REP_DATA_ID);

    memset(&hids_init_obj, 0, sizeof(hids_init_obj));
    hids_init_obj.evt_handler = on_hids_evt;
    hids_init_obj.error_handler = err_handler;
    hids_init_obj.is_kb = true;
    hids_init_obj.is_mouse = false;
    hids_init_obj.inp_rep_count = INPUT_REP_COUNT;
    hids_init_obj.p_inp_rep_array = input_report_array;
    hids_init_obj.outp_rep_count = OUTPUT_REP_COUNT;
    hids_init_obj.p_outp_rep_array = output_report_array;
    hids_init_obj.feature_rep_count = 0;
    hids_init_obj.p_feature_rep_array = NULL;
    hids_init_obj.rep_map.data_len = sizeof(hid_descriptor);
    hids_init_obj.rep_map.p_data = hid_descriptor;
    hids_init_obj.hid_information.bcd_hid = BASE_USB_HID_SPEC_VERSION;
    hids_init_obj.hid_information.b_country_code = 0;
    hids_init_obj.hid_information.flags = HID_INFO_FLAG_REMOTE_WAKE_MSK | HID_INFO_FLAG_NORMALLY_CONNECTABLE_MSK;
    hids_init_obj.included_services_count = 0;
    hids_init_obj.p_included_services_array = NULL;

    hids_init_obj.rep_map.rd_sec = SEC_CURRENT;
    hids_init_obj.hid_information.rd_sec = SEC_CURRENT;

    hids_init_obj.boot_kb_inp_rep_sec.cccd_wr = SEC_CURRENT;
    hids_init_obj.boot_kb_inp_rep_sec.rd = SEC_CURRENT;

    hids_init_obj.boot_kb_outp_rep_sec.rd = SEC_CURRENT;
    hids_init_obj.boot_kb_outp_rep_sec.wr = SEC_CURRENT;

    hids_init_obj.protocol_mode_rd_sec = SEC_CURRENT;
    hids_init_obj.protocol_mode_wr_sec = SEC_CURRENT;
    hids_init_obj.ctrl_point_wr_sec = SEC_CURRENT;

    err_code = ble_hids_init(&m_hids, &hids_init_obj);
    APP_ERROR_CHECK(err_code);
}

/**
 * 通过BLE发送配置数据包
 */
void  ble_send_conf(uint8_t len, uint8_t* data)
{
    if (len > INPUT_REPORT_LEN_DATA)
        return;

    uint8_t buff[INPUT_REPORT_LEN_DATA] = {0};
    memcpy(&buff[0], data, len);
    ble_hids_inp_rep_send(&m_hids,
        INPUT_REP_DATA_INDEX,
        INPUT_REPORT_LEN_DATA,  //使用len会导致无法发送信息？INPUT_REPORT_LEN_DATA
        buff,
        m_conn_handle);
}

static uint32_t send_key(ble_hids_t* p_hids,
    uint8_t index,
    uint8_t* pattern,
    uint8_t len)
{
    ret_code_t err_code = NRF_SUCCESS;
    /*
    暂未知原因，按键包未发送到reportid 0x7f的input
    由于底层驱动发送会根据报告协议和nkro启用情况自行决定发送渠道
    目前使用ble_hids_inp_rep_send发送按键包
    注释ble_hids_boot_kb_inp_rep_send
    */
    /*if (keyboard_protocol == HID_BOOT_PROTOCOL) {
        if (index == 0) {
            err_code = ble_hids_boot_kb_inp_rep_send(p_hids,
                len,
                pattern,
                m_conn_handle);
        }
    } else  */
    {
        err_code = ble_hids_inp_rep_send(p_hids,
            index,
            len,
            pattern,
            m_conn_handle);
    }
    return err_code;
}

/**@brief   Function for initializing the buffer queue used to key events that could not be
 *          transmitted
 *
 * @note    In case of HID keyboard, a temporary buffering could be employed to handle scenarios
 *          where encryption is not yet enabled or there was a momentary link loss or there were no
 *          Transmit buffers.
 */
static void buffer_init(void)
{
    uint32_t buffer_count;

    BUFFER_LIST_INIT();

    for (buffer_count = 0; buffer_count < MAX_BUFFER_ENTRIES; buffer_count++) {
        BUFFER_ELEMENT_INIT(buffer_count);
    }
}

/**@brief Function for enqueuing key scan patterns that could not be transmitted either completely
 *        or partially.
 *
 * @param[in]  p_hids         Identifies the service for which Key Notifications are buffered.
 * @param[in]  p_key_pattern  Pointer to key pattern.
 * @param[in]  pattern_len    Length of key pattern.
 * @param[in]  offset         Offset applied to Key Pattern when requesting a transmission on
 *                            dequeue, @ref buffer_dequeue.
 * @return     NRF_SUCCESS on success, else an error code indicating reason for failure.
 */
static uint32_t buffer_enqueue(ble_hids_t* p_hids,
    uint8_t report_index,
    uint8_t* p_key_pattern,
    uint16_t pattern_len)
{
    buffer_entry_t* element;
    uint32_t err_code = NRF_SUCCESS;

    if (BUFFER_LIST_FULL()) {
        // Element cannot be buffered.
        err_code = NRF_ERROR_NO_MEM;
    } else {
        // Make entry of buffer element and copy data.
        element = &buffer_list.buffer[(buffer_list.wp)];
        element->p_instance = p_hids;
        element->p_data = p_key_pattern;
        element->index = report_index;
        element->data_len = pattern_len;

        buffer_list.count++;
        buffer_list.wp++;

        if (buffer_list.wp == MAX_BUFFER_ENTRIES) {
            buffer_list.wp = 0;
        }
    }

    return err_code;
}

/**@brief   Function to dequeue key scan patterns that could not be transmitted either completely of
 *          partially.
 *
 * @param[in]  tx_flag   Indicative of whether the dequeue should result in transmission or not.
 * @note       A typical example when all keys are dequeued with transmission is when link is
 *             disconnected.
 *
 * @return     NRF_SUCCESS on success, else an error code indicating reason for failure.
 */
static uint32_t buffer_dequeue(bool tx_flag)
{
    buffer_entry_t* p_element;
    uint32_t err_code = NRF_SUCCESS;

    if (BUFFER_LIST_EMPTY()) {
        err_code = NRF_ERROR_NOT_FOUND;
    } else {
        bool remove_element = true;

        p_element = &buffer_list.buffer[(buffer_list.rp)];

        if (tx_flag) {
            err_code = send_key(p_element->p_instance,
                p_element->index,
                p_element->p_data,
                p_element->data_len);
            if (err_code == NRF_ERROR_RESOURCES) {
                // Transmission could not be completed, do not remove the entry
                remove_element = false;
            }
        }

        if (remove_element) {
            BUFFER_ELEMENT_INIT(buffer_list.rp);

            buffer_list.rp++;
            buffer_list.count--;

            if (buffer_list.rp == MAX_BUFFER_ENTRIES) {
                buffer_list.rp = 0;
            }
        }
    }

    return err_code;
}

/**@brief Function for sending sample key presses to the peer.
 *
 * @param[in]   report_id         Packet report ID. 0:keyboard, 1:mouse, 2:system, 3:consumer, 0x80: nkro keyboard.
 * @param[in]   key_pattern_len   Pattern length.
 * @param[in]   p_key_pattern     Pattern to be sent.
 */
void keys_send(uint8_t report_id, uint8_t key_pattern_len, uint8_t* p_key_pattern)
{
    ret_code_t err_code;
    // check if report id overflow
    if (report_id >= sizeof(hid_report_map_table))
        return;
    // convert report id to index
    uint8_t report_index = hid_report_map_table[report_id];
    // check if this function is disable
    if (report_index == INPUT_REP_INDEX_INVALID)
        return;

    err_code = send_key(&m_hids, report_index, p_key_pattern, key_pattern_len);
    // check if send success, otherwise enqueue this.
    if (err_code == NRF_ERROR_RESOURCES) {
        // Buffer enqueue routine return value is not intentionally checked.
        // Rationale: Its better to have a a few keys missing than have a system
        // reset. Recommendation is to work out most optimal value for
        // MAX_BUFFER_ENTRIES to minimize chances of buffer queue full condition
        UNUSED_VARIABLE(buffer_enqueue(&m_hids, report_index, p_key_pattern, key_pattern_len));
    }

    if ((err_code != NRF_SUCCESS) && (err_code != NRF_ERROR_INVALID_STATE) && (err_code != NRF_ERROR_RESOURCES) && (err_code != NRF_ERROR_BUSY) && (err_code != BLE_ERROR_GATTS_SYS_ATTR_MISSING) && (err_code != NRF_ERROR_FORBIDDEN)) {
        APP_ERROR_HANDLER(err_code);
    }
}

/**@brief Function for handling the HID Report Characteristic Write event.
 *
 * @param[in]   p_evt   HID service event.
 */
static void on_hid_rep_char_write(ble_hids_evt_t* p_evt)
{
    if (p_evt->params.char_write.char_id.rep_type == BLE_HIDS_REP_TYPE_OUTPUT) {
        ret_code_t err_code;
        uint8_t report_val;
        uint8_t control_val[OUTPUT_REPORT_LEN_DATA];
        uint8_t report_index = p_evt->params.char_write.char_id.rep_index;

        if (report_index == OUTPUT_REP_KBD_INDEX) {
            err_code = ble_hids_outp_rep_get(&m_hids,
                report_index,
                OUTPUT_REPORT_LEN_KEYBOARD,
                0,
                m_conn_handle,
                &report_val);

            if (err_code == NRF_SUCCESS) {
                keyboard_led_val_ble = report_val;
            }
        }
        if (report_index == OUTPUT_REP_DATA_INDEX) {
            err_code = ble_hids_outp_rep_get(&m_hids,
                report_index,
                OUTPUT_REPORT_LEN_DATA,
                0,
                m_conn_handle,
                control_val);

            if (err_code == NRF_SUCCESS) {
                ble_hid_on_recv(control_val[0], control_val[1], &control_val[2]);
            } else {
                hid_response_generic(HID_RESP_UART_CHECKSUM_ERROR);
            }
        }
    }
}

/**@brief Function for handling HID events.
 *
 * @details This function will be called for all HID events which are passed to the application.
 *
 * @param[in]   p_hids  HID service structure.
 * @param[in]   p_evt   Event received from the HID service.
 */
static void on_hids_evt(ble_hids_t* p_hids, ble_hids_evt_t* p_evt)
{
    switch (p_evt->evt_type) {
    case BLE_HIDS_EVT_BOOT_MODE_ENTERED:
        keyboard_protocol = HID_BOOT_PROTOCOL;
        m_ble_in_report_mode = false;
        break;

    case BLE_HIDS_EVT_REPORT_MODE_ENTERED:
        keyboard_protocol = HID_REPORT_PROTOCOL;
        m_ble_in_report_mode = true;
        break;

    case BLE_HIDS_EVT_REP_CHAR_WRITE:
        on_hid_rep_char_write(p_evt);
        break;

    case BLE_HIDS_EVT_NOTIF_ENABLED:
    case BLE_HIDS_EVT_HOST_SUSP:
    case BLE_HIDS_EVT_HOST_EXIT_SUSP:
    case BLE_HIDS_EVT_NOTIF_DISABLED:
        break;

    default:
        // No implementation needed.
        break;
    }
}

void hid_service_init(ble_srv_error_handler_t err_handler)
{
    hids_init(err_handler);
    buffer_init();
     //蓝牙初始化时正确设定协议
    if(!usb_working()){
        keyboard_protocol = m_ble_in_report_mode;
    }
}

void hid_event_handler(enum user_event evt, void* arg)
{
    uint8_t subevt = (uint32_t)arg;
    if (evt == USER_EVT_BLE_STATE_CHANGE && subevt == BLE_STATE_DISCONNECT)
        buffer_dequeue(false); // 断开后清空所有未发送的按键
    else if (evt == USER_EVT_INTERNAL && subevt == INTERNAL_EVT_GATTS_TX_COMPLETE)
        buffer_dequeue(true); // 发送完毕后出队列
}

/**
 * 蓝牙hid队列是否为空
 */
bool hid_queue_empty()
{
    return BUFFER_LIST_EMPTY();
}
