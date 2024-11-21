## 旋转编码器驱动

软件实现的旋转编码器驱动，可支持多个旋转编码器

### 启用配置
```
SOFT_ENCODER_ENABLE = yes # 启用旋转编码器（软件实现）
```

### Config 配置项目
```
// 编码器数量
#define NUMBER_OF_ENCODERS 2
// 旋钮配置
#define ROTARY_ENCODER_A {19,18} // 编码器A脚IO
#define ROTARY_ENCODER_B {20,17} // 编码器B脚IO
// 旋钮正向按钮映射
#define ROTARY_ENCODER_POS {{5,5},{5,7}} // 正向旋转映射到键盘的按键行列
// 旋钮负向按钮映射
#define ROTARY_ENCODER_NEG {{5,6},{5,8}} // 负向旋转映射到键盘的按键行列

```
