#include "keyboard_fn.h"
#ifdef RGBLIGHT_ENABLE
#include "rgblight.h"
#endif
#ifdef RGB_MATRIX_ENABLE
#include "rgb_matrix.h"
#endif

static void action(uint8_t id, uint8_t opt)
{
#ifdef RGBLIGHT_ENABLE
    if (id == RGBLIGHT_CONTROL) {
        switch (opt) {
        case RGBLIGHT_TOGGLE:
            rgblight_toggle();
            break;
        case RGBLIGHT_MODE_INCREASE:
            rgblight_step();
            break;
        case RGBLIGHT_MODE_DECREASE:
            rgblight_step_reverse();
            break;
        case RGBLIGHT_HUE_INCREASE:
            rgblight_increase_hue();
            break;
        case RGBLIGHT_HUE_DECREASE:
            rgblight_decrease_hue();
            break;
        case RGBLIGHT_SAT_INCREASE:
            rgblight_increase_sat();
            break;
        case RGBLIGHT_SAT_DECREASE:
            rgblight_decrease_sat();
            break;
        case RGBLIGHT_VAL_INCREASE:
            rgblight_increase_val();
            break;
        case RGBLIGHT_VAL_DECREASE:
            rgblight_decrease_val();
            break;
        case RGBLIGHT_SPEED_INCREASE:
            rgblight_increase_speed();
            break;
        case RGBLIGHT_SPEED_DECREASE:
            rgblight_decrease_speed();
            break;
        default:
            break;
        }
    }
#endif
#ifdef RGB_MATRIX_ENABLE
    if (id == RGBMATRIX_CONTROL) {
        switch (opt) {
        case RGBLIGHT_TOGGLE:
            rgb_matrix_toggle();
            break;
        case RGBLIGHT_MODE_INCREASE:
            rgb_matrix_step();
            break;
        case RGBLIGHT_MODE_DECREASE:
            rgb_matrix_step_reverse();
            break;
        case RGBLIGHT_HUE_INCREASE:
            rgb_matrix_increase_hue();
            break;
        case RGBLIGHT_HUE_DECREASE:
            rgb_matrix_decrease_hue();
            break;
        case RGBLIGHT_SAT_INCREASE:
            rgb_matrix_increase_sat();
            break;
        case RGBLIGHT_SAT_DECREASE:
            rgb_matrix_decrease_sat();
            break;
        case RGBLIGHT_VAL_INCREASE:
            rgb_matrix_increase_val();
            break;
        case RGBLIGHT_VAL_DECREASE:
            rgb_matrix_decrease_val();
            break;
        case RGBLIGHT_SPEED_INCREASE:
            rgb_matrix_increase_speed();
            break;
        case RGBLIGHT_SPEED_DECREASE:
            rgb_matrix_decrease_speed();
            break;
        default:
            break;
        }
    }
#endif
}

static void rgblight_fn_handler(keyrecord_t* record, uint8_t id, uint8_t opt)
{
    if (record->event.pressed) {
        action(id, opt);
    }
}

FN_HANDLER(rgblight_fn_handler);

static void rgblight_ctrl_handler(uint8_t id, uint8_t opt)
{
    action(id, opt);
}

CTRL_HANDLER(rgblight_ctrl_handler);