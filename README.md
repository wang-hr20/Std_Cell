# README

## 反相器，Inv

* svt

  `Inv.sp`

  功能已验证

* lvt

  `Inv_lvt.sp`


## 传输门，TranGate

* svt

  `TranGate.sp`

  功能已验证

* lvt

  `TranGate_lvt.sp`

* hvt

  `TranGate_hvt.sp`

## 异或门，XR

* lvt

    基于传输门逻辑，输出有反相器提供驱动能力

    需要Inv_lvt与TranGate_lvt

  `XR_lvt.sp`

  功能已验证

## 单比特全加器，FullAdder

* svt

  基于传输门逻辑，需要差分输入

  需要Inv与TranGate

  `FullAdder_1.sp`

  已验证