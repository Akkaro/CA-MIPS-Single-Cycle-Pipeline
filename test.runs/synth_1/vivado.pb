
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:032

00:00:052	
484.6842	
182.184Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental {C:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/utils_1/imports/synth_1/proba1.dcp}Z12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2^
\C:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/utils_1/imports/synth_1/proba1.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
i
Command: %s
53*	vivadotcl28
6synth_design -top test_mips_new -part xc7a100tcsg324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a100tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a100tZ17-349h px� 
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
19204Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 1337.406 ; gain = 440.492
h px� 
�
synthesizing module '%s'638*oasys2
test_mips_new2]
YC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/test_mips_new.vhd2
178@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
mpg_52S
QC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/mpg_5.vhd2
62
mpg2
mpg_52]
YC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/test_mips_new.vhd2
1588@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
mpg_52U
QC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/mpg_5.vhd2
148@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mpg_52
02
12U
QC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/mpg_5.vhd2
148@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
seven_segment2[
YC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/seven_segment.vhd2
62
seven_segment_new2
seven_segment2]
YC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/test_mips_new.vhd2
1658@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
seven_segment2]
YC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/seven_segment.vhd2
158@Z8-638h px� 
�
default block is never used226*oasys2]
YC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/seven_segment.vhd2
348@Z8-226h px� 
�
default block is never used226*oasys2]
YC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/seven_segment.vhd2
498@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
seven_segment2
02
12]
YC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/seven_segment.vhd2
158@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
instructionFetch2^
\C:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/instructionFetch.vhd2
52
instructionFetchNew2
instructionFetch2]
YC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/test_mips_new.vhd2
1748@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
instructionFetch2`
\C:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/instructionFetch.vhd2
198@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
instructionFetch2
02
12`
\C:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/instructionFetch.vhd2
198@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
main_control2Z
XC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/main_control.vhd2
62
main_control_inst2
main_control2]
YC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/test_mips_new.vhd2
1888@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
main_control2\
XC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/main_control.vhd2
238@Z8-638h px� 
�
default block is never used226*oasys2\
XC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/main_control.vhd2
298@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
main_control2
02
12\
XC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/main_control.vhd2
238@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
instructionDecode2_
]C:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/instructionDecode.vhd2
62
instr_decode_inst2
instructionDecode2]
YC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/test_mips_new.vhd2
2028@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
instructionDecode2a
]C:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/instructionDecode.vhd2
258@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

reg_file2V
TC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/reg_file.vhd2
62
reg_file_inst2

reg_file2a
]C:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/instructionDecode.vhd2
448@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

reg_file2X
TC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/reg_file.vhd2
198@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

reg_file2
02
12X
TC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/reg_file.vhd2
198@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
instructionDecode2
02
12a
]C:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/instructionDecode.vhd2
258@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	exec_unit2W
UC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/exec_unit.vhd2
62
exec_unit_inst2
	exec_unit2]
YC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/test_mips_new.vhd2
2178@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	exec_unit2Y
UC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/exec_unit.vhd2
248@Z8-638h px� 
�
default block is never used226*oasys2Y
UC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/exec_unit.vhd2
638@Z8-226h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
	s_slt_res2Y
UC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/exec_unit.vhd2
618@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
s_alu_control2Y
UC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/exec_unit.vhd2
768@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	exec_unit2
02
12Y
UC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/exec_unit.vhd2
248@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

mem_unit2V
TC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/mem_unit.vhd2
62
mem_unit_inst2

mem_unit2]
YC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/test_mips_new.vhd2
2328@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

mem_unit2X
TC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/mem_unit.vhd2
208@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ram2Q
OC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/ram.vhd2
62

ram_inst2
ram2X
TC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/mem_unit.vhd2
358@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
ram2S
OC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/ram.vhd2
168@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ram2
02
12S
OC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/ram.vhd2
168@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

mem_unit2
02
12X
TC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/mem_unit.vhd2
208@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
test_mips_new2
02
12]
YC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/test_mips_new.vhd2
178@Z8-256h px� 
n
+design %s has port %s driven by constant %s3447*oasys2
test_mips_new2	
led[12]2
0Z8-3917h px� 
n
+design %s has port %s driven by constant %s3447*oasys2
test_mips_new2	
led[11]2
0Z8-3917h px� 
n
+design %s has port %s driven by constant %s3447*oasys2
test_mips_new2	
led[10]2
0Z8-3917h px� 
m
+design %s has port %s driven by constant %s3447*oasys2
test_mips_new2
led[9]2
0Z8-3917h px� 
m
+design %s has port %s driven by constant %s3447*oasys2
test_mips_new2
led[8]2
0Z8-3917h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2
sa2
	exec_unitZ8-7129h px� 
}
9Port %s in module %s is either unconnected or has no load4866*oasys2
	instr[15]2
instructionDecodeZ8-7129h px� 
}
9Port %s in module %s is either unconnected or has no load4866*oasys2
	instr[14]2
instructionDecodeZ8-7129h px� 
}
9Port %s in module %s is either unconnected or has no load4866*oasys2
	instr[13]2
instructionDecodeZ8-7129h px� 
v
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[15]2
test_mips_newZ8-7129h px� 
v
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[14]2
test_mips_newZ8-7129h px� 
v
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[13]2
test_mips_newZ8-7129h px� 
v
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[12]2
test_mips_newZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[8]2
test_mips_newZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[7]2
test_mips_newZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[3]2
test_mips_newZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[2]2
test_mips_newZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[1]2
test_mips_newZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[0]2
test_mips_newZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1447.203 ; gain = 550.289
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:06 . Memory (MB): peak = 1447.203 ; gain = 550.289
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:06 . Memory (MB): peak = 1447.203 ; gain = 550.289
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0052

1447.2032
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2?
;C:/Personal stuff/Year 2 Sem 2/CA/utcn-ca-nexys-a7-100t.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2?
;C:/Personal stuff/Year 2 Sem 2/CA/utcn-ca-nexys-a7-100t.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2=
;C:/Personal stuff/Year 2 Sem 2/CA/utcn-ca-nexys-a7-100t.xdc2!
.Xil/test_mips_new_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1539.1092
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0042

1539.1092
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:08 ; elapsed = 00:00:12 . Memory (MB): peak = 1539.109 ; gain = 642.195
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7a100tcsg324-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:08 ; elapsed = 00:00:12 . Memory (MB): peak = 1539.109 ; gain = 642.195
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:08 ; elapsed = 00:00:12 . Memory (MB): peak = 1539.109 ; gain = 642.195
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
!inferring latch for variable '%s'327*oasys2
s_slt_res_reg2Y
UC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.srcs/sources_1/new/exec_unit.vhd2
798@Z8-327h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:12 . Memory (MB): peak = 1539.109 ; gain = 642.195
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   3 Input   16 Bit       Adders := 1     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input     16 Bit         XORs := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 3     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	 257 Input   16 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   8 Input   16 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   8 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   8 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   8 Input    1 Bit        Muxes := 7     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
n
+design %s has port %s driven by constant %s3447*oasys2
test_mips_new2	
led[12]2
0Z8-3917h px� 
n
+design %s has port %s driven by constant %s3447*oasys2
test_mips_new2	
led[11]2
0Z8-3917h px� 
n
+design %s has port %s driven by constant %s3447*oasys2
test_mips_new2	
led[10]2
0Z8-3917h px� 
m
+design %s has port %s driven by constant %s3447*oasys2
test_mips_new2
led[9]2
0Z8-3917h px� 
m
+design %s has port %s driven by constant %s3447*oasys2
test_mips_new2
led[8]2
0Z8-3917h px� 
v
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[15]2
test_mips_newZ8-7129h px� 
v
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[14]2
test_mips_newZ8-7129h px� 
v
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[13]2
test_mips_newZ8-7129h px� 
v
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[12]2
test_mips_newZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[8]2
test_mips_newZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[7]2
test_mips_newZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[3]2
test_mips_newZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[2]2
test_mips_newZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[1]2
test_mips_newZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[0]2
test_mips_newZ8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:11 ; elapsed = 00:00:17 . Memory (MB): peak = 1539.109 ; gain = 642.195
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
X
%s*synth2@
>
Distributed RAM: Preliminary Mapping Report (see note below)
h px� 
�
%s*synth2p
n+--------------+----------------------------------------+-----------+----------------------+----------------+
h px� 
�
%s*synth2q
o|Module Name   | RTL Object                             | Inference | Size (Depth x Width) | Primitives     | 
h px� 
�
%s*synth2p
n+--------------+----------------------------------------+-----------+----------------------+----------------+
h px� 
�
%s*synth2q
o|test_mips_new | mem_unit_inst/ram_inst/s_ram_reg       | Implied   | 16 x 16              | RAM16X1S x 16  | 
h px� 
�
%s*synth2q
o|test_mips_new | instr_decode_inst/reg_file_inst/rf_reg | Implied   | 8 x 16               | RAM32M x 6     | 
h px� 
�
%s*synth2q
o+--------------+----------------------------------------+-----------+----------------------+----------------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:21 . Memory (MB): peak = 1539.109 ; gain = 642.195
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:14 ; elapsed = 00:00:22 . Memory (MB): peak = 1539.109 ; gain = 642.195
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
A
%s
*synth2)
'
Distributed RAM: Final Mapping Report
h p
x
� 
�
%s
*synth2p
n+--------------+----------------------------------------+-----------+----------------------+----------------+
h p
x
� 
�
%s
*synth2q
o|Module Name   | RTL Object                             | Inference | Size (Depth x Width) | Primitives     | 
h p
x
� 
�
%s
*synth2p
n+--------------+----------------------------------------+-----------+----------------------+----------------+
h p
x
� 
�
%s
*synth2q
o|test_mips_new | mem_unit_inst/ram_inst/s_ram_reg       | Implied   | 16 x 16              | RAM16X1S x 16  | 
h p
x
� 
�
%s
*synth2q
o|test_mips_new | instr_decode_inst/reg_file_inst/rf_reg | Implied   | 8 x 16               | RAM32M x 6     | 
h p
x
� 
�
%s
*synth2q
o+--------------+----------------------------------------+-----------+----------------------+----------------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:14 ; elapsed = 00:00:22 . Memory (MB): peak = 1539.109 ; gain = 642.195
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:16 ; elapsed = 00:00:26 . Memory (MB): peak = 1539.109 ; gain = 642.195
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:16 ; elapsed = 00:00:26 . Memory (MB): peak = 1539.109 ; gain = 642.195
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:16 ; elapsed = 00:00:26 . Memory (MB): peak = 1539.109 ; gain = 642.195
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:16 ; elapsed = 00:00:26 . Memory (MB): peak = 1539.109 ; gain = 642.195
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:16 ; elapsed = 00:00:26 . Memory (MB): peak = 1539.109 ; gain = 642.195
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:16 ; elapsed = 00:00:26 . Memory (MB): peak = 1539.109 ; gain = 642.195
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|      |Cell     |Count |
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|1     |BUFG     |     1|
h px� 
4
%s*synth2
|2     |CARRY4   |    18|
h px� 
4
%s*synth2
|3     |LUT1     |    12|
h px� 
4
%s*synth2
|4     |LUT2     |    23|
h px� 
4
%s*synth2
|5     |LUT3     |    55|
h px� 
4
%s*synth2
|6     |LUT4     |    16|
h px� 
4
%s*synth2
|7     |LUT5     |    21|
h px� 
4
%s*synth2
|8     |LUT6     |   165|
h px� 
4
%s*synth2
|9     |MUXF7    |    16|
h px� 
4
%s*synth2
|10    |RAM16X1S |    16|
h px� 
4
%s*synth2
|11    |RAM32M   |     6|
h px� 
4
%s*synth2
|12    |FDRE     |    38|
h px� 
4
%s*synth2
|13    |LD       |     1|
h px� 
4
%s*synth2
|14    |IBUF     |     9|
h px� 
4
%s*synth2
|15    |OBUF     |    31|
h px� 
4
%s*synth2
+------+---------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:16 ; elapsed = 00:00:26 . Memory (MB): peak = 1539.109 ; gain = 642.195
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 17 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:11 ; elapsed = 00:00:24 . Memory (MB): peak = 1539.109 ; gain = 550.289
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:16 ; elapsed = 00:00:26 . Memory (MB): peak = 1539.109 ; gain = 642.195
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0142

1539.1092
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
57Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1539.1092
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 23 instances were transformed.
  LD => LDCE: 1 instance 
  RAM16X1S => RAM32X1S (RAMS32): 16 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 6 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

b2902aa0Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
542
382
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:192

00:00:302

1539.1092

1051.461Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0052

1539.1092
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2U
SC:/Personal stuff/Year 2 Sem 2/CA/Projects/test/test.runs/synth_1/test_mips_new.dcpZ17-1381h px� 
�
%s4*runtcl2r
pExecuting : report_utilization -file test_mips_new_utilization_synth.rpt -pb test_mips_new_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Fri Apr 26 13:48:07 2024Z17-206h px� 


End Record