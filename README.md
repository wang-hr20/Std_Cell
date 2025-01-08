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

## 与门，AN

* lvt，两输入与门

  静态CMOS实现

  `AN_lvt_2.sp`

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
  
## Booth阵列ADD单元，ADD

* hvt
  
    需要Inv_hvt
  
  `ADD.sp`
  
## Booth阵列PP_MUX单元，PP_MUX

* hvt
  
    需要Inv_hvt
  
  `PP_MUX.sp`
  
## Booth阵列IPP_MUX单元，IPP_MUX

* hvt
  
    需要Inv_hvt与PP_MUX
  
  `IPP_MUX.sp`
