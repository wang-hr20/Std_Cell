# README

## 反相器，Inv

* svt

  `Inv.sp`

  功能已验证

* lvt

  `Inv_lvt.sp`

* hvt

  `Inv_hvt.sp`

## 传输门，TranGate

* svt

  `TranGate.sp`

  功能已验证

* lvt

  `TranGate_lvt.sp`

* hvt

  `TranGate_hvt.sp`

## 与非门，ND

* lvt，两输入与非门

  静态CMOS实现

  `ND_lvt_2.sp`

* hvt，两输入与非门

  静态CMOS实现

  `ND_hvt_2.sp`

## 与门，And

* hvt，两输入与门

  传输门逻辑实现，需要A，B，B'

  `And_hvt.sp`

## 或非门，NR

* lvt，两输入或非门

 静态CMOS实现

 `NR_lvt_2.sp`

## 异或门，XR

* lvt

    基于传输门逻辑，输出有反相器提供驱动能力

    需要Inv_lvt与TranGate_lvt

  `XR_lvt.sp`

  功能已验证

* hvt

    基于传输门逻辑，输出有反相器提供驱动能力

    需要Inv_hvt与TranGate_hvt

  `XR_hvt.sp`
  
## 单比特半加器，HalfAdder

* hvt

  基于传输门逻辑，需要差分输入

  需要Inv_hvt与TranGate_hvt

  `HalfAdder_hvt_1.sp`

## 单比特全加器，FullAdder

* svt

  基于传输门逻辑，需要差分输入

  需要Inv与TranGate

  `FullAdder_1.sp`

  已验证

* hvt

  基于传输门逻辑，需要差分输入

  需要Inv_hvt与TranGate_hvt

  `FullAdder_hvt_1.sp`
  
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

## Booth阵列PP_FA单元，PP_FA

* hvt
  
    需要FullAdder_hvt_1与PP_MUX
  
  `PP_FA.sp`
