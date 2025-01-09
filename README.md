# README

## 反相器，Inv

* svt

  `Inv.sp`

  功能已验证

* lvt

  `Inv_lvt.sp`

  功能已验证
  @tt,25℃,Vdd=1V,1GHz,输入翻转时间10ps,单位尺寸：负载2倍尺寸反相器
  tp=5ps, 翻转时间10ps,p=0.26uW
  单位尺寸饱和区 Cgg=0.16fF Cdd=0.06fF vth=480mV

* hvt

  `Inv_hvt.sp`

  功能已验证
  条件同lvt，tp=8ps，p=0.25uW，cgg=0.12fF Cdd=0.04fF vth=630mV

* nmos lvt pmos hvt

  `Inv_nlph.sp`

  size of nmos : pmos = 1 : 1

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
  
* lvt，三输入与非门
  
  静态互补CMOS实现
  
  `ND_lvt_3.sp`

* lvt，四输入与非门
  
  静态互补CMOS实现
  
  `ND_lvt_4.sp`

## 与门，AN/And
* lvt，两输入与门

  静态互补CMOS逻辑实现

  `AN_lvt_2.sp`

* hvt，两输入与门

  传输门逻辑实现，需要A, A', B, B'

  `And_hvt.sp`

* lvt，三输入与门

  静态互补CMOS逻辑实现

  `AN_lvt_3.sp`

* lvt，四输入与门

  静态互补CMOS逻辑实现

  `AN_lvt_4.sp`

## 或非门，NR

* lvt，两输入或非门

  静态CMOS实现

  `NR_lvt_2.sp`

* lvt，三输入或非门

  静态CMOS实现

  `NR_lvt_3.sp`

* lvt，四输入或非门

  静态CMOS实现

  `NR_lvt_4.sp`

## 或门，OR

* lvt，两输入非门

  静态CMOS实现

  `OR_lvt_2.sp`

* lvt，三输入非门

  静态CMOS实现

  `OR_lvt_3.sp`

* lvt，四输入非门

  静态CMOS实现

  `OR_lvt_4.sp`

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

  去掉进位传播逻辑，用于输出最高bit

  `FullAdder_NoCout_hvt_1.sp`
  
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

    去掉进位传播逻辑，需要FullAdder_NoCout_hvt_1

  `PP_FA_NoCout.sp`

## Booth阵列PP_HA单元，PP_HA

* hvt
  
    需要HalfAdder_hvt_1与PP_MUX
  
  `PP_HA.sp`

## Booth阵列IPP_HA单元，IPP_HA

* hvt
  
    需要HalfAdder_hvt_1与IPP_MUX
  
  `IPP_HA.sp`

## Booth编码器，Booth_Encoder

* lvt

    需要inv_lvt、XR_lvt、AN_lvt_2（2输入与非门，名字可能会误导）、AN_lvt_3（三输入与非门）

  `Booth_Encoder.sp`
