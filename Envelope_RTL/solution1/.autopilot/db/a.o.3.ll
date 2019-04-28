; ModuleID = '/home/austin/ECE1373_GhostSynth/modules/Envelope/Envelope_RTL/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wait = internal unnamed_addr global i1 false     ; [#uses=2 type=i1*]
@time = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@sustainTime = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@releaseTime = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@releaseSlope = internal unnamed_addr global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@guard_variable_for_e_4 = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@guard_variable_for_e_3 = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@guard_variable_for_e_2 = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@guard_variable_for_e_1 = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@guard_variable_for_e = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@envelope_str = internal unnamed_addr constant [9 x i8] c"envelope\00" ; [#uses=1 type=[9 x i8]*]
@decaySlope = internal unnamed_addr global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@attackSlope = internal unnamed_addr global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@p_str5 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=6 type=[9 x i8]*]
@p_str4 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=6 type=[10 x i8]*]
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=2 type=[5 x i8]*]
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=2 type=[5 x i8]*]
@p_str1 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=46 type=[1 x i8]*]

; [#uses=29]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @envelope(float* %wave_in_V, float* %wave_out_V, i32 %press, i32 %attackDuration, i32 %decayDuration, i32 %sustainAmplitude, i32 %sustainDuration, i32 %releaseDuration) {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %wave_in_V), !map !20
  call void (...)* @_ssdm_op_SpecBitsMap(float* %wave_out_V), !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %press), !map !30
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %attackDuration), !map !36
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %decayDuration), !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %sustainAmplitude), !map !44
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %sustainDuration), !map !48
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %releaseDuration), !map !52
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @envelope_str) nounwind
  %releaseDuration_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %releaseDuration) ; [#uses=4 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %releaseDuration_read}, i64 0, metadata !56), !dbg !121 ; [debug line = 17:6] [debug variable = releaseDuration]
  %sustainDuration_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %sustainDuration) ; [#uses=4 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %sustainDuration_read}, i64 0, metadata !122), !dbg !123 ; [debug line = 16:6] [debug variable = sustainDuration]
  %sustainAmplitude_rea = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %sustainAmplitude) ; [#uses=3 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %sustainAmplitude_rea}, i64 0, metadata !124), !dbg !125 ; [debug line = 15:6] [debug variable = sustainAmplitude]
  %decayDuration_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %decayDuration) ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %decayDuration_read}, i64 0, metadata !126), !dbg !127 ; [debug line = 14:6] [debug variable = decayDuration]
  %attackDuration_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %attackDuration) ; [#uses=4 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %attackDuration_read}, i64 0, metadata !128), !dbg !129 ; [debug line = 13:6] [debug variable = attackDuration]
  %press_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %press) ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %press_read}, i64 0, metadata !130), !dbg !131 ; [debug line = 12:6] [debug variable = press]
  call void @llvm.dbg.value(metadata !{float* %wave_in_V}, i64 0, metadata !132), !dbg !137 ; [debug line = 9:23] [debug variable = wave_in.V]
  call void @llvm.dbg.value(metadata !{float* %wave_out_V}, i64 0, metadata !138), !dbg !140 ; [debug line = 10:23] [debug variable = wave_out.V]
  call void @llvm.dbg.value(metadata !{i32 %press}, i64 0, metadata !130), !dbg !131 ; [debug line = 12:6] [debug variable = press]
  call void @llvm.dbg.value(metadata !{i32 %attackDuration}, i64 0, metadata !128), !dbg !129 ; [debug line = 13:6] [debug variable = attackDuration]
  call void @llvm.dbg.value(metadata !{i32 %decayDuration}, i64 0, metadata !126), !dbg !127 ; [debug line = 14:6] [debug variable = decayDuration]
  call void @llvm.dbg.value(metadata !{i32 %sustainAmplitude}, i64 0, metadata !124), !dbg !125 ; [debug line = 15:6] [debug variable = sustainAmplitude]
  call void @llvm.dbg.value(metadata !{i32 %sustainDuration}, i64 0, metadata !122), !dbg !123 ; [debug line = 16:6] [debug variable = sustainDuration]
  call void @llvm.dbg.value(metadata !{i32 %releaseDuration}, i64 0, metadata !56), !dbg !121 ; [debug line = 17:6] [debug variable = releaseDuration]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !141 ; [debug line = 22:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %wave_in_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !143 ; [debug line = 24:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %wave_out_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !144 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %press, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !145 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %attackDuration, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !146 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %decayDuration, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !147 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %sustainAmplitude, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !148 ; [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %sustainDuration, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !149 ; [debug line = 31:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %releaseDuration, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !150 ; [debug line = 32:1]
  %guard_variable_for_e = load i1* @guard_variable_for_e_4, align 1 ; [#uses=1 type=i1]
  br i1 %guard_variable_for_e, label %._crit_edge, label %codeRepl1, !dbg !151 ; [debug line = 35:52]

codeRepl1:                                        ; preds = %0
  %tmp_1_i = sitofp i32 %attackDuration_read to float, !dbg !151 ; [#uses=1 type=float] [debug line = 35:52]
  %tmp_2_i = fdiv float 2.000000e+00, %tmp_1_i, !dbg !151 ; [#uses=1 type=float] [debug line = 35:52]
  store float %tmp_2_i, float* @attackSlope, align 4, !dbg !151 ; [debug line = 35:52]
  store i1 true, i1* @guard_variable_for_e_4, align 1, !dbg !151 ; [debug line = 35:52]
  br label %._crit_edge

._crit_edge:                                      ; preds = %codeRepl1, %0
  %guard_variable_for_e_1 = load i1* @guard_variable_for_e_3, align 1 ; [#uses=1 type=i1]
  br i1 %guard_variable_for_e_1, label %._crit_edge5, label %codeRepl, !dbg !152 ; [debug line = 36:90]

codeRepl:                                         ; preds = %._crit_edge
  %tmp_4_i = add nsw i32 %sustainAmplitude_rea, -2, !dbg !152 ; [#uses=1 type=i32] [debug line = 36:90]
  %tmp_5_i = sitofp i32 %tmp_4_i to float, !dbg !152 ; [#uses=1 type=float] [debug line = 36:90]
  %tmp_6_i = sub nsw i32 %decayDuration_read, %attackDuration_read, !dbg !152 ; [#uses=1 type=i32] [debug line = 36:90]
  %tmp_7_i = sitofp i32 %tmp_6_i to float, !dbg !152 ; [#uses=1 type=float] [debug line = 36:90]
  %tmp_8_i = fdiv float %tmp_5_i, %tmp_7_i, !dbg !152 ; [#uses=1 type=float] [debug line = 36:90]
  store float %tmp_8_i, float* @decaySlope, align 4, !dbg !152 ; [debug line = 36:90]
  store i1 true, i1* @guard_variable_for_e_3, align 1, !dbg !152 ; [debug line = 36:90]
  br label %._crit_edge5

._crit_edge5:                                     ; preds = %codeRepl, %._crit_edge
  %guard_variable_for_e_2 = load i1* @guard_variable_for_e_2, align 1 ; [#uses=1 type=i1]
  br i1 %guard_variable_for_e_2, label %._crit_edge6, label %codeRepl2, !dbg !153 ; [debug line = 37:91]

codeRepl2:                                        ; preds = %._crit_edge5
  %tmp_i = sub nsw i32 0, %sustainAmplitude_rea, !dbg !153 ; [#uses=1 type=i32] [debug line = 37:91]
  %tmp_10_i = sitofp i32 %tmp_i to float, !dbg !153 ; [#uses=1 type=float] [debug line = 37:91]
  %tmp_11_i = sub nsw i32 %releaseDuration_read, %sustainDuration_read, !dbg !153 ; [#uses=1 type=i32] [debug line = 37:91]
  %tmp_12_i = sitofp i32 %tmp_11_i to float, !dbg !153 ; [#uses=1 type=float] [debug line = 37:91]
  %tmp_13_i = fdiv float %tmp_10_i, %tmp_12_i, !dbg !153 ; [#uses=1 type=float] [debug line = 37:91]
  store float %tmp_13_i, float* @releaseSlope, align 4, !dbg !153 ; [debug line = 37:91]
  store i1 true, i1* @guard_variable_for_e_2, align 1, !dbg !153 ; [debug line = 37:91]
  br label %._crit_edge6

._crit_edge6:                                     ; preds = %codeRepl2, %._crit_edge5
  %guard_variable_for_e_3 = load i1* @guard_variable_for_e_1, align 1 ; [#uses=1 type=i1]
  %releaseTime_load = load i32* @releaseTime, align 4, !dbg !154 ; [#uses=1 type=i32] [debug line = 54:3]
  br i1 %guard_variable_for_e_3, label %._crit_edge7, label %codeRepl3, !dbg !156 ; [debug line = 41:42]

codeRepl3:                                        ; preds = %._crit_edge6
  store i1 true, i1* @guard_variable_for_e_1, align 1, !dbg !156 ; [debug line = 41:42]
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %codeRepl3, %._crit_edge6
  %releaseTime_flag = phi i1 [ true, %codeRepl3 ], [ false, %._crit_edge6 ] ; [#uses=1 type=i1]
  %releaseTime_loc = phi i32 [ %releaseDuration_read, %codeRepl3 ], [ %releaseTime_load, %._crit_edge6 ] ; [#uses=3 type=i32]
  %guard_variable_for_e_4 = load i1* @guard_variable_for_e, align 1 ; [#uses=1 type=i1]
  %sustainTime_load = load i32* @sustainTime, align 4, !dbg !157 ; [#uses=1 type=i32] [debug line = 49:7]
  br i1 %guard_variable_for_e_4, label %._crit_edge8_ifconv, label %codeRepl4, !dbg !158 ; [debug line = 42:42]

codeRepl4:                                        ; preds = %._crit_edge7
  store i1 true, i1* @guard_variable_for_e, align 1, !dbg !158 ; [debug line = 42:42]
  br label %._crit_edge8_ifconv

._crit_edge8_ifconv:                              ; preds = %codeRepl4, %._crit_edge7
  %sustainTime_flag = phi i1 [ true, %codeRepl4 ], [ false, %._crit_edge7 ] ; [#uses=1 type=i1]
  %sustainTime_loc = phi i32 [ %sustainDuration_read, %codeRepl4 ], [ %sustainTime_load, %._crit_edge7 ] ; [#uses=6 type=i32]
  call void @llvm.dbg.value(metadata !{float* %wave_in_V}, i64 0, metadata !159), !dbg !164 ; [debug line = 101:48@45:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %wave_in_V}, i64 0, metadata !166), !dbg !169 ; [debug line = 123:48@102:9@45:2] [debug variable = stream<float>.V]
  %tmp_25 = call float @_ssdm_op_Read.axis.volatile.floatP(float* %wave_in_V), !dbg !172 ; [#uses=4 type=float] [debug line = 125:9@102:9@45:2]
  call void @llvm.dbg.value(metadata !{float %tmp_25}, i64 0, metadata !174), !dbg !172 ; [debug line = 125:9@102:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_25}, i64 0, metadata !175), !dbg !176 ; [debug line = 126:9@102:9@45:2] [debug variable = resultAmplitude]
  %tmp_4 = icmp eq i32 %press_read, 0, !dbg !177  ; [#uses=2 type=i1] [debug line = 47:2]
  %wait_load = load i1* @wait, align 1            ; [#uses=1 type=i1]
  %time_load = load i32* @time, align 4, !dbg !157 ; [#uses=3 type=i32] [debug line = 49:7]
  %tmp_5 = icmp slt i32 %time_load, %sustainTime_loc, !dbg !157 ; [#uses=1 type=i1] [debug line = 49:7]
  %sustainTime_loc_time = select i1 %tmp_5, i32 %sustainTime_loc, i32 %time_load, !dbg !157 ; [#uses=1 type=i32] [debug line = 49:7]
  %not_tmp_4 = xor i1 %tmp_4, true                ; [#uses=2 type=i1]
  %time_loc_1 = select i1 %tmp_4, i32 %sustainTime_loc_time, i32 %time_load ; [#uses=2 type=i32]
  %tmp_6 = icmp sgt i32 %press_read, 0, !dbg !178 ; [#uses=5 type=i1] [debug line = 52:2]
  %tmp_7 = add nsw i32 %sustainTime_loc, -1, !dbg !178 ; [#uses=1 type=i32] [debug line = 52:2]
  %tmp_8 = icmp eq i32 %time_loc_1, %tmp_7, !dbg !178 ; [#uses=1 type=i1] [debug line = 52:2]
  %tmp_s = add nsw i32 %sustainTime_loc, 1, !dbg !179 ; [#uses=2 type=i32] [debug line = 53:3]
  %tmp_1 = add nsw i32 %releaseTime_loc, 1, !dbg !154 ; [#uses=2 type=i32] [debug line = 54:3]
  %sel_tmp1 = and i1 %tmp_6, %tmp_8               ; [#uses=6 type=i1]
  %releaseTime_flag_1 = or i1 %releaseTime_flag, %sel_tmp1 ; [#uses=1 type=i1]
  %sel_tmp5 = select i1 %sel_tmp1, i32 %tmp_1, i32 %releaseDuration_read ; [#uses=1 type=i32]
  %releaseTime_new_1 = select i1 %tmp_6, i32 %sel_tmp5, i32 %releaseDuration_read ; [#uses=1 type=i32]
  %sel_tmp9 = select i1 %sel_tmp1, i32 %tmp_1, i32 %releaseTime_loc ; [#uses=1 type=i32]
  %releaseTime_loc_1 = select i1 %tmp_6, i32 %sel_tmp9, i32 %releaseTime_loc ; [#uses=1 type=i32]
  %sustainTime_flag_1 = or i1 %sustainTime_flag, %sel_tmp1 ; [#uses=1 type=i1]
  %sel_tmp = select i1 %sel_tmp1, i32 %tmp_s, i32 %sustainDuration_read ; [#uses=1 type=i32]
  %sustainTime_new_1 = select i1 %tmp_6, i32 %sel_tmp, i32 %sustainDuration_read ; [#uses=1 type=i32]
  %sel_tmp2 = select i1 %sel_tmp1, i32 %tmp_s, i32 %sustainTime_loc ; [#uses=1 type=i32]
  %sustainTime_loc_1 = select i1 %tmp_6, i32 %sel_tmp2, i32 %sustainTime_loc ; [#uses=2 type=i32]
  %tmp_2 = xor i1 %wait_load, true, !dbg !180     ; [#uses=1 type=i1] [debug line = 57:2]
  %tmp_3 = or i1 %tmp_2, %not_tmp_4, !dbg !180    ; [#uses=1 type=i1] [debug line = 57:2]
  br i1 %sustainTime_flag_1, label %mergeST5, label %._crit_edge10.new6

mergeST:                                          ; preds = %._crit_edge10.new6
  store i32 %releaseTime_new_1, i32* @releaseTime, align 4, !dbg !156 ; [debug line = 41:42]
  br label %._crit_edge10.new_ifconv

._crit_edge10.new_ifconv:                         ; preds = %._crit_edge10.new6, %mergeST
  %time_loc_2 = select i1 %tmp_3, i32 %time_loc_1, i32 0, !dbg !180 ; [#uses=8 type=i32] [debug line = 57:2]
  %tmp_9 = icmp slt i32 %time_loc_2, %attackDuration_read, !dbg !181 ; [#uses=4 type=i1] [debug line = 61:2]
  %attackSlope_load = load float* @attackSlope, align 4, !dbg !182 ; [#uses=1 type=float] [debug line = 62:3]
  %tmp_10 = sitofp i32 %time_loc_2 to float, !dbg !182 ; [#uses=1 type=float] [debug line = 62:3]
  %tmp_11 = fmul float %attackSlope_load, %tmp_10, !dbg !182 ; [#uses=1 type=float] [debug line = 62:3]
  %resultAmplitude_1 = fmul float %tmp_25, %tmp_11, !dbg !182 ; [#uses=1 type=float] [debug line = 62:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude_1}, i64 0, metadata !175), !dbg !182 ; [debug line = 62:3] [debug variable = resultAmplitude]
  %tmp_12 = icmp slt i32 %time_loc_2, %decayDuration_read, !dbg !184 ; [#uses=2 type=i1] [debug line = 65:7]
  %decaySlope_load = load float* @decaySlope, align 4, !dbg !185 ; [#uses=1 type=float] [debug line = 66:3]
  %tmp_13 = sub nsw i32 %time_loc_2, %attackDuration_read, !dbg !185 ; [#uses=1 type=i32] [debug line = 66:3]
  %tmp_14 = sitofp i32 %tmp_13 to float, !dbg !185 ; [#uses=1 type=float] [debug line = 66:3]
  %tmp_15 = fmul float %decaySlope_load, %tmp_14, !dbg !185 ; [#uses=1 type=float] [debug line = 66:3]
  %tmp_16 = fadd float %tmp_15, 2.000000e+00, !dbg !185 ; [#uses=1 type=float] [debug line = 66:3]
  %resultAmplitude_2 = fmul float %tmp_25, %tmp_16, !dbg !185 ; [#uses=1 type=float] [debug line = 66:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude_2}, i64 0, metadata !175), !dbg !185 ; [debug line = 66:3] [debug variable = resultAmplitude]
  %tmp_17 = icmp slt i32 %time_loc_2, %sustainTime_loc_1, !dbg !187 ; [#uses=3 type=i1] [debug line = 69:7]
  %tmp_18 = sitofp i32 %sustainAmplitude_rea to float, !dbg !188 ; [#uses=2 type=float] [debug line = 70:3]
  %resultAmplitude_3 = fmul float %tmp_25, %tmp_18, !dbg !188 ; [#uses=1 type=float] [debug line = 70:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude_3}, i64 0, metadata !175), !dbg !188 ; [debug line = 70:3] [debug variable = resultAmplitude]
  %tmp_19 = icmp slt i32 %time_loc_2, %releaseTime_loc_1, !dbg !190 ; [#uses=2 type=i1] [debug line = 73:7]
  %releaseSlope_load = load float* @releaseSlope, align 4, !dbg !191 ; [#uses=1 type=float] [debug line = 74:3]
  %tmp_20 = sub nsw i32 %time_loc_2, %sustainTime_loc_1, !dbg !191 ; [#uses=1 type=i32] [debug line = 74:3]
  %tmp_21 = sitofp i32 %tmp_20 to float, !dbg !191 ; [#uses=1 type=float] [debug line = 74:3]
  %tmp_22 = fmul float %releaseSlope_load, %tmp_21, !dbg !191 ; [#uses=1 type=float] [debug line = 74:3]
  %tmp_23 = fadd float %tmp_22, %tmp_18, !dbg !191 ; [#uses=1 type=float] [debug line = 74:3]
  %resultAmplitude_4 = fmul float %tmp_25, %tmp_23, !dbg !191 ; [#uses=1 type=float] [debug line = 74:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude_4}, i64 0, metadata !175), !dbg !191 ; [debug line = 74:3] [debug variable = resultAmplitude]
  %not_tmp_s = xor i1 %tmp_9, true                ; [#uses=2 type=i1]
  %sel_tmp3 = and i1 %tmp_12, %not_tmp_s          ; [#uses=3 type=i1]
  %sel_tmp4 = xor i1 %sel_tmp3, %not_tmp_s        ; [#uses=1 type=i1]
  %sel_tmp30_demorgan = or i1 %tmp_9, %tmp_12     ; [#uses=3 type=i1]
  %tmp_21_not = xor i1 %tmp_17, true              ; [#uses=1 type=i1]
  %not_sel_tmp = or i1 %sel_tmp30_demorgan, %tmp_21_not ; [#uses=1 type=i1]
  %sel_tmp37_demorgan = or i1 %sel_tmp30_demorgan, %tmp_17 ; [#uses=2 type=i1]
  %tmp_23_not = xor i1 %tmp_19, true              ; [#uses=1 type=i1]
  %not_sel_tmp1 = or i1 %sel_tmp37_demorgan, %tmp_23_not ; [#uses=1 type=i1]
  %tmp1 = and i1 %not_sel_tmp, %not_sel_tmp1      ; [#uses=1 type=i1]
  %sel_tmp6 = and i1 %tmp1, %sel_tmp4             ; [#uses=1 type=i1]
  %wait_flag_1 = or i1 %sel_tmp6, %not_tmp_4      ; [#uses=1 type=i1]
  %sel_tmp7 = xor i1 %sel_tmp30_demorgan, true    ; [#uses=1 type=i1]
  %sel_tmp8 = and i1 %tmp_17, %sel_tmp7           ; [#uses=2 type=i1]
  %sel_tmp10 = xor i1 %sel_tmp37_demorgan, true   ; [#uses=1 type=i1]
  %sel_tmp11 = and i1 %tmp_19, %sel_tmp10         ; [#uses=2 type=i1]
  %or_cond = or i1 %sel_tmp11, %sel_tmp8          ; [#uses=1 type=i1]
  %or_cond1 = or i1 %sel_tmp3, %tmp_9             ; [#uses=1 type=i1]
  %or_cond2 = or i1 %or_cond, %or_cond1           ; [#uses=1 type=i1]
  %not_or_cond = xor i1 %or_cond2, true           ; [#uses=1 type=i1]
  %resultAmplitude_5 = select i1 %tmp_9, float %resultAmplitude_1, float 0.000000e+00, !dbg !193 ; [#uses=1 type=float] [debug line = 145:31@106:9@84:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude_5}, i64 0, metadata !175), !dbg !185 ; [debug line = 66:3] [debug variable = resultAmplitude]
  %resultAmplitude_6 = select i1 %sel_tmp3, float %resultAmplitude_2, float %resultAmplitude_5, !dbg !193 ; [#uses=1 type=float] [debug line = 145:31@106:9@84:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude_6}, i64 0, metadata !175), !dbg !185 ; [debug line = 66:3] [debug variable = resultAmplitude]
  %resultAmplitude_7 = select i1 %sel_tmp8, float %resultAmplitude_3, float %resultAmplitude_6, !dbg !193 ; [#uses=1 type=float] [debug line = 145:31@106:9@84:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude_7}, i64 0, metadata !175), !dbg !185 ; [debug line = 66:3] [debug variable = resultAmplitude]
  %resultAmplitude = select i1 %sel_tmp11, float %resultAmplitude_4, float %resultAmplitude_7, !dbg !193 ; [#uses=1 type=float] [debug line = 145:31@106:9@84:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude}, i64 0, metadata !175), !dbg !185 ; [debug line = 66:3] [debug variable = resultAmplitude]
  %tmp_24 = add nsw i32 %time_loc_2, 1, !dbg !200 ; [#uses=1 type=i32] [debug line = 82:2]
  call void @llvm.dbg.value(metadata !{float* %wave_out_V}, i64 0, metadata !201), !dbg !203 ; [debug line = 105:48@84:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %wave_out_V}, i64 0, metadata !204), !dbg !206 ; [debug line = 144:48@106:9@84:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude}, i64 0, metadata !207), !dbg !193 ; [debug line = 145:31@106:9@84:2] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.floatP(float* %wave_out_V, float %resultAmplitude), !dbg !208 ; [debug line = 146:9@106:9@84:2]
  store i32 %tmp_24, i32* @time, align 4, !dbg !209 ; [debug line = 50:3]
  br i1 %wait_flag_1, label %mergeST7, label %.new

mergeST5:                                         ; preds = %._crit_edge8_ifconv
  store i32 %sustainTime_new_1, i32* @sustainTime, align 4, !dbg !158 ; [debug line = 42:42]
  br label %._crit_edge10.new6

._crit_edge10.new6:                               ; preds = %mergeST5, %._crit_edge8_ifconv
  br i1 %releaseTime_flag_1, label %mergeST, label %._crit_edge10.new_ifconv

mergeST7:                                         ; preds = %._crit_edge10.new_ifconv
  store i1 %not_or_cond, i1* @wait, align 1, !dbg !210 ; [debug line = 48:3]
  br label %.new

.new:                                             ; preds = %mergeST7, %._crit_edge10.new_ifconv
  ret void, !dbg !211                             ; [debug line = 85:1]
}

; [#uses=1]
define weak void @_ssdm_op_Write.axis.volatile.floatP(float*, float) {
entry:
  store float %1, float* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=9]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=8]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=6]
define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak float @_ssdm_op_Read.axis.volatile.floatP(float*) {
entry:
  %empty = load float* %0                         ; [#uses=1 type=float]
  ret float %empty
}

!opencl.kernels = !{!0, !7, !13, !15, !18}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"wave_in", metadata !"wave_out", metadata !"press", metadata !"attackDuration", metadata !"decayDuration", metadata !"sustainAmplitude", metadata !"sustainDuration", metadata !"releaseDuration"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const float &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"wdata"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !14, metadata !6}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!15 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !17, metadata !6}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"float &"}
!17 = metadata !{metadata !"kernel_arg_name", metadata !"rdata"}
!18 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !19, metadata !6}
!19 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"wave_in.V", metadata !24, metadata !"float", i32 0, i32 31}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 0, i32 1}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 31, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"wave_out.V", metadata !24, metadata !"float", i32 0, i32 31}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 31, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"press", metadata !34, metadata !"int", i32 0, i32 31}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 0, i32 0}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 31, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"attackDuration", metadata !34, metadata !"int", i32 0, i32 31}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 31, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"decayDuration", metadata !34, metadata !"int", i32 0, i32 31}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 31, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"sustainAmplitude", metadata !34, metadata !"int", i32 0, i32 31}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 31, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"sustainDuration", metadata !34, metadata !"int", i32 0, i32 31}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 31, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"releaseDuration", metadata !34, metadata !"int", i32 0, i32 31}
!56 = metadata !{i32 786689, metadata !57, metadata !"releaseDuration", metadata !58, i32 134217745, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!57 = metadata !{i32 786478, i32 0, metadata !58, metadata !"envelope", metadata !"envelope", metadata !"_Z8envelopeRN3hls6streamIfEES2_iiiiii", metadata !58, i32 7, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !72, i32 19} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 786473, metadata !"src/Envelope.cpp", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!59 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!60 = metadata !{null, metadata !61, metadata !61, metadata !120, metadata !120, metadata !120, metadata !120, metadata !120, metadata !120}
!61 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_reference_type ]
!62 = metadata !{i32 786434, metadata !63, metadata !"stream<float>", metadata !64, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !65, i32 0, null, metadata !118} ; [ DW_TAG_class_type ]
!63 = metadata !{i32 786489, null, metadata !"hls", metadata !64, i32 69} ; [ DW_TAG_namespace ]
!64 = metadata !{i32 786473, metadata !"/home/austin/Desktop/Vivado_HLS/2017.2/common/technology/autopilot/hls_stream.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!65 = metadata !{metadata !66, metadata !68, metadata !74, metadata !80, metadata !85, metadata !88, metadata !92, metadata !97, metadata !102, metadata !103, metadata !104, metadata !107, metadata !110, metadata !111, metadata !114}
!66 = metadata !{i32 786445, metadata !62, metadata !"V", metadata !64, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !67} ; [ DW_TAG_member ]
!67 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!68 = metadata !{i32 786478, i32 0, metadata !62, metadata !"stream", metadata !"stream", metadata !"", metadata !64, i32 83, metadata !69, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !72, i32 83} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!70 = metadata !{null, metadata !71}
!71 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !62} ; [ DW_TAG_pointer_type ]
!72 = metadata !{metadata !73}
!73 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!74 = metadata !{i32 786478, i32 0, metadata !62, metadata !"stream", metadata !"stream", metadata !"", metadata !64, i32 86, metadata !75, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !72, i32 86} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!76 = metadata !{null, metadata !71, metadata !77}
!77 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ]
!78 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_const_type ]
!79 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!80 = metadata !{i32 786478, i32 0, metadata !62, metadata !"stream", metadata !"stream", metadata !"", metadata !64, i32 91, metadata !81, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !72, i32 91} ; [ DW_TAG_subprogram ]
!81 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!82 = metadata !{null, metadata !71, metadata !83}
!83 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_reference_type ]
!84 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_const_type ]
!85 = metadata !{i32 786478, i32 0, metadata !62, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !64, i32 94, metadata !86, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !72, i32 94} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!87 = metadata !{metadata !61, metadata !71, metadata !83}
!88 = metadata !{i32 786478, i32 0, metadata !62, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !64, i32 101, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !72, i32 101} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!90 = metadata !{null, metadata !71, metadata !91}
!91 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_reference_type ]
!92 = metadata !{i32 786478, i32 0, metadata !62, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !64, i32 105, metadata !93, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !72, i32 105} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!94 = metadata !{null, metadata !71, metadata !95}
!95 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_reference_type ]
!96 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_const_type ]
!97 = metadata !{i32 786478, i32 0, metadata !62, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !64, i32 112, metadata !98, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !72, i32 112} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!99 = metadata !{metadata !100, metadata !101}
!100 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!101 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !84} ; [ DW_TAG_pointer_type ]
!102 = metadata !{i32 786478, i32 0, metadata !62, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !64, i32 117, metadata !98, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !72, i32 117} ; [ DW_TAG_subprogram ]
!103 = metadata !{i32 786478, i32 0, metadata !62, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !64, i32 123, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !72, i32 123} ; [ DW_TAG_subprogram ]
!104 = metadata !{i32 786478, i32 0, metadata !62, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !64, i32 129, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !72, i32 129} ; [ DW_TAG_subprogram ]
!105 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!106 = metadata !{metadata !67, metadata !71}
!107 = metadata !{i32 786478, i32 0, metadata !62, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !64, i32 136, metadata !108, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !72, i32 136} ; [ DW_TAG_subprogram ]
!108 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!109 = metadata !{metadata !100, metadata !71, metadata !91}
!110 = metadata !{i32 786478, i32 0, metadata !62, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !64, i32 144, metadata !93, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !72, i32 144} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 786478, i32 0, metadata !62, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !64, i32 150, metadata !112, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !72, i32 150} ; [ DW_TAG_subprogram ]
!112 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!113 = metadata !{metadata !100, metadata !71, metadata !95}
!114 = metadata !{i32 786478, i32 0, metadata !62, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !64, i32 157, metadata !115, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !72, i32 157} ; [ DW_TAG_subprogram ]
!115 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!116 = metadata !{metadata !117, metadata !71}
!117 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!118 = metadata !{metadata !119}
!119 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !67, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!120 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!121 = metadata !{i32 17, i32 6, metadata !57, null}
!122 = metadata !{i32 786689, metadata !57, metadata !"sustainDuration", metadata !58, i32 117440528, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 16, i32 6, metadata !57, null}
!124 = metadata !{i32 786689, metadata !57, metadata !"sustainAmplitude", metadata !58, i32 100663311, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 15, i32 6, metadata !57, null}
!126 = metadata !{i32 786689, metadata !57, metadata !"decayDuration", metadata !58, i32 83886094, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 14, i32 6, metadata !57, null}
!128 = metadata !{i32 786689, metadata !57, metadata !"attackDuration", metadata !58, i32 67108877, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!129 = metadata !{i32 13, i32 6, metadata !57, null}
!130 = metadata !{i32 786689, metadata !57, metadata !"press", metadata !58, i32 50331660, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!131 = metadata !{i32 12, i32 6, metadata !57, null}
!132 = metadata !{i32 790531, metadata !133, metadata !"wave_in.V", null, i32 9, metadata !134, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!133 = metadata !{i32 786689, metadata !57, metadata !"wave_in", metadata !58, i32 16777225, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!134 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !135} ; [ DW_TAG_pointer_type ]
!135 = metadata !{i32 786438, metadata !63, metadata !"stream<float>", metadata !64, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !136, i32 0, null, metadata !118} ; [ DW_TAG_class_field_type ]
!136 = metadata !{metadata !66}
!137 = metadata !{i32 9, i32 23, metadata !57, null}
!138 = metadata !{i32 790531, metadata !139, metadata !"wave_out.V", null, i32 10, metadata !134, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!139 = metadata !{i32 786689, metadata !57, metadata !"wave_out", metadata !58, i32 33554442, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!140 = metadata !{i32 10, i32 23, metadata !57, null}
!141 = metadata !{i32 22, i32 1, metadata !142, null}
!142 = metadata !{i32 786443, metadata !57, i32 19, i32 2, metadata !58, i32 0} ; [ DW_TAG_lexical_block ]
!143 = metadata !{i32 24, i32 1, metadata !142, null}
!144 = metadata !{i32 25, i32 1, metadata !142, null}
!145 = metadata !{i32 27, i32 1, metadata !142, null}
!146 = metadata !{i32 28, i32 1, metadata !142, null}
!147 = metadata !{i32 29, i32 1, metadata !142, null}
!148 = metadata !{i32 30, i32 1, metadata !142, null}
!149 = metadata !{i32 31, i32 1, metadata !142, null}
!150 = metadata !{i32 32, i32 1, metadata !142, null}
!151 = metadata !{i32 35, i32 52, metadata !142, null}
!152 = metadata !{i32 36, i32 90, metadata !142, null}
!153 = metadata !{i32 37, i32 91, metadata !142, null}
!154 = metadata !{i32 54, i32 3, metadata !155, null}
!155 = metadata !{i32 786443, metadata !142, i32 52, i32 43, metadata !58, i32 1} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 41, i32 42, metadata !142, null}
!157 = metadata !{i32 49, i32 7, metadata !142, null}
!158 = metadata !{i32 42, i32 42, metadata !142, null}
!159 = metadata !{i32 790531, metadata !160, metadata !"stream<float>.V", null, i32 101, metadata !163, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!160 = metadata !{i32 786689, metadata !161, metadata !"this", metadata !64, i32 16777317, metadata !162, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!161 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !64, i32 101, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !88, metadata !72, i32 101} ; [ DW_TAG_subprogram ]
!162 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ]
!163 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !135} ; [ DW_TAG_pointer_type ]
!164 = metadata !{i32 101, i32 48, metadata !161, metadata !165}
!165 = metadata !{i32 45, i32 2, metadata !142, null}
!166 = metadata !{i32 790531, metadata !167, metadata !"stream<float>.V", null, i32 123, metadata !163, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!167 = metadata !{i32 786689, metadata !168, metadata !"this", metadata !64, i32 16777339, metadata !162, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!168 = metadata !{i32 786478, i32 0, metadata !63, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !64, i32 123, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !103, metadata !72, i32 123} ; [ DW_TAG_subprogram ]
!169 = metadata !{i32 123, i32 48, metadata !168, metadata !170}
!170 = metadata !{i32 102, i32 9, metadata !171, metadata !165}
!171 = metadata !{i32 786443, metadata !161, i32 101, i32 82, metadata !64, i32 10} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 125, i32 9, metadata !173, metadata !170}
!173 = metadata !{i32 786443, metadata !168, i32 123, i32 73, metadata !64, i32 11} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 786688, metadata !173, metadata !"tmp", metadata !64, i32 124, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!175 = metadata !{i32 786688, metadata !142, metadata !"resultAmplitude", metadata !58, i32 39, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!176 = metadata !{i32 126, i32 9, metadata !173, metadata !170}
!177 = metadata !{i32 47, i32 2, metadata !142, null}
!178 = metadata !{i32 52, i32 2, metadata !142, null}
!179 = metadata !{i32 53, i32 3, metadata !155, null}
!180 = metadata !{i32 57, i32 2, metadata !142, null}
!181 = metadata !{i32 61, i32 2, metadata !142, null}
!182 = metadata !{i32 62, i32 3, metadata !183, null}
!183 = metadata !{i32 786443, metadata !142, i32 61, i32 27, metadata !58, i32 3} ; [ DW_TAG_lexical_block ]
!184 = metadata !{i32 65, i32 7, metadata !142, null}
!185 = metadata !{i32 66, i32 3, metadata !186, null}
!186 = metadata !{i32 786443, metadata !142, i32 65, i32 31, metadata !58, i32 4} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 69, i32 7, metadata !142, null}
!188 = metadata !{i32 70, i32 3, metadata !189, null}
!189 = metadata !{i32 786443, metadata !142, i32 69, i32 30, metadata !58, i32 5} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 73, i32 7, metadata !142, null}
!191 = metadata !{i32 74, i32 3, metadata !192, null}
!192 = metadata !{i32 786443, metadata !142, i32 73, i32 29, metadata !58, i32 6} ; [ DW_TAG_lexical_block ]
!193 = metadata !{i32 145, i32 31, metadata !194, metadata !196}
!194 = metadata !{i32 786443, metadata !195, i32 144, i32 79, metadata !64, i32 9} ; [ DW_TAG_lexical_block ]
!195 = metadata !{i32 786478, i32 0, metadata !63, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !64, i32 144, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !110, metadata !72, i32 144} ; [ DW_TAG_subprogram ]
!196 = metadata !{i32 106, i32 9, metadata !197, metadata !199}
!197 = metadata !{i32 786443, metadata !198, i32 105, i32 88, metadata !64, i32 8} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !64, i32 105, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !92, metadata !72, i32 105} ; [ DW_TAG_subprogram ]
!199 = metadata !{i32 84, i32 2, metadata !142, null}
!200 = metadata !{i32 82, i32 2, metadata !142, null}
!201 = metadata !{i32 790531, metadata !202, metadata !"stream<float>.V", null, i32 105, metadata !163, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!202 = metadata !{i32 786689, metadata !198, metadata !"this", metadata !64, i32 16777321, metadata !162, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!203 = metadata !{i32 105, i32 48, metadata !198, metadata !199}
!204 = metadata !{i32 790531, metadata !205, metadata !"stream<float>.V", null, i32 144, metadata !163, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!205 = metadata !{i32 786689, metadata !195, metadata !"this", metadata !64, i32 16777360, metadata !162, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!206 = metadata !{i32 144, i32 48, metadata !195, metadata !196}
!207 = metadata !{i32 786688, metadata !194, metadata !"tmp", metadata !64, i32 145, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!208 = metadata !{i32 146, i32 9, metadata !194, metadata !196}
!209 = metadata !{i32 50, i32 3, metadata !142, null}
!210 = metadata !{i32 48, i32 3, metadata !142, null}
!211 = metadata !{i32 85, i32 1, metadata !142, null}
