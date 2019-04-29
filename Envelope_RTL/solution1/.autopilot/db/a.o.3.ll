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
@p_str5 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=5 type=[9 x i8]*]
@p_str4 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=5 type=[10 x i8]*]
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=2 type=[5 x i8]*]
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=2 type=[5 x i8]*]
@p_str1 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=41 type=[1 x i8]*]

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=28]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @envelope(float* %wave_in_V, float* %wave_out_V, i32 %press, i32 %attackDuration, i32 %decayDuration, float %sustainAmplitude, i32 %releaseDuration) {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %wave_in_V), !map !20
  call void (...)* @_ssdm_op_SpecBitsMap(float* %wave_out_V), !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %press), !map !30
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %attackDuration), !map !36
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %decayDuration), !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(float %sustainAmplitude), !map !44
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %releaseDuration), !map !48
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @envelope_str) nounwind
  %releaseDuration_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %releaseDuration) ; [#uses=5 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %releaseDuration_read}, i64 0, metadata !52), !dbg !117 ; [debug line = 16:6] [debug variable = releaseDuration]
  %sustainAmplitude_rea = call float @_ssdm_op_Read.s_axilite.float(float %sustainAmplitude) ; [#uses=5 type=float]
  call void @llvm.dbg.value(metadata !{float %sustainAmplitude_rea}, i64 0, metadata !118), !dbg !119 ; [debug line = 15:8] [debug variable = sustainAmplitude]
  %decayDuration_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %decayDuration) ; [#uses=5 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %decayDuration_read}, i64 0, metadata !120), !dbg !121 ; [debug line = 14:6] [debug variable = decayDuration]
  %attackDuration_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %attackDuration) ; [#uses=4 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %attackDuration_read}, i64 0, metadata !122), !dbg !123 ; [debug line = 13:6] [debug variable = attackDuration]
  %press_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %press) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %press_read}, i64 0, metadata !124), !dbg !125 ; [debug line = 12:6] [debug variable = press]
  call void @llvm.dbg.value(metadata !{float* %wave_in_V}, i64 0, metadata !126), !dbg !131 ; [debug line = 9:23] [debug variable = wave_in.V]
  call void @llvm.dbg.value(metadata !{float* %wave_out_V}, i64 0, metadata !132), !dbg !134 ; [debug line = 10:23] [debug variable = wave_out.V]
  call void @llvm.dbg.value(metadata !{i32 %press}, i64 0, metadata !124), !dbg !125 ; [debug line = 12:6] [debug variable = press]
  call void @llvm.dbg.value(metadata !{i32 %attackDuration}, i64 0, metadata !122), !dbg !123 ; [debug line = 13:6] [debug variable = attackDuration]
  call void @llvm.dbg.value(metadata !{i32 %decayDuration}, i64 0, metadata !120), !dbg !121 ; [debug line = 14:6] [debug variable = decayDuration]
  call void @llvm.dbg.value(metadata !{float %sustainAmplitude}, i64 0, metadata !118), !dbg !119 ; [debug line = 15:8] [debug variable = sustainAmplitude]
  call void @llvm.dbg.value(metadata !{i32 %releaseDuration}, i64 0, metadata !52), !dbg !117 ; [debug line = 16:6] [debug variable = releaseDuration]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !135 ; [debug line = 21:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %wave_in_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !137 ; [debug line = 23:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %wave_out_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !138 ; [debug line = 24:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %press, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !139 ; [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %attackDuration, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !140 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %decayDuration, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !141 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(float %sustainAmplitude, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !142 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %releaseDuration, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !143 ; [debug line = 30:1]
  %guard_variable_for_e = load i1* @guard_variable_for_e_4, align 1 ; [#uses=1 type=i1]
  br i1 %guard_variable_for_e, label %._crit_edge, label %codeRepl1, !dbg !144 ; [debug line = 33:52]

codeRepl1:                                        ; preds = %0
  %tmp_2_i = sitofp i32 %attackDuration_read to float, !dbg !144 ; [#uses=1 type=float] [debug line = 33:52]
  %tmp_3_i = fdiv float 1.000000e+00, %tmp_2_i, !dbg !144 ; [#uses=1 type=float] [debug line = 33:52]
  store float %tmp_3_i, float* @attackSlope, align 4, !dbg !144 ; [debug line = 33:52]
  store i1 true, i1* @guard_variable_for_e_4, align 1, !dbg !144 ; [debug line = 33:52]
  br label %._crit_edge

._crit_edge:                                      ; preds = %codeRepl1, %0
  %guard_variable_for_e_1 = load i1* @guard_variable_for_e_3, align 1 ; [#uses=1 type=i1]
  br i1 %guard_variable_for_e_1, label %._crit_edge7, label %codeRepl, !dbg !145 ; [debug line = 34:90]

codeRepl:                                         ; preds = %._crit_edge
  %tmp_5_i = fadd float %sustainAmplitude_rea, -1.000000e+00, !dbg !145 ; [#uses=1 type=float] [debug line = 34:90]
  %tmp_6_i = sub nsw i32 %decayDuration_read, %attackDuration_read, !dbg !145 ; [#uses=1 type=i32] [debug line = 34:90]
  %tmp_7_i = sitofp i32 %tmp_6_i to float, !dbg !145 ; [#uses=1 type=float] [debug line = 34:90]
  %tmp_8_i = fdiv float %tmp_5_i, %tmp_7_i, !dbg !145 ; [#uses=1 type=float] [debug line = 34:90]
  store float %tmp_8_i, float* @decaySlope, align 4, !dbg !145 ; [debug line = 34:90]
  store i1 true, i1* @guard_variable_for_e_3, align 1, !dbg !145 ; [debug line = 34:90]
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %codeRepl, %._crit_edge
  %guard_variable_for_e_2 = load i1* @guard_variable_for_e_2, align 1 ; [#uses=1 type=i1]
  br i1 %guard_variable_for_e_2, label %._crit_edge8, label %codeRepl2, !dbg !146 ; [debug line = 35:89]

codeRepl2:                                        ; preds = %._crit_edge7
  %tmp_i_to_int = bitcast float %sustainAmplitude_rea to i32, !dbg !146 ; [#uses=1 type=i32] [debug line = 35:89]
  %tmp_i_neg = xor i32 %tmp_i_to_int, -2147483648, !dbg !146 ; [#uses=1 type=i32] [debug line = 35:89]
  %tmp_i = bitcast i32 %tmp_i_neg to float, !dbg !146 ; [#uses=1 type=float] [debug line = 35:89]
  %tmp_10_i = sub nsw i32 %releaseDuration_read, %decayDuration_read, !dbg !146 ; [#uses=1 type=i32] [debug line = 35:89]
  %tmp_11_i = sitofp i32 %tmp_10_i to float, !dbg !146 ; [#uses=1 type=float] [debug line = 35:89]
  %tmp_12_i = fdiv float %tmp_i, %tmp_11_i, !dbg !146 ; [#uses=1 type=float] [debug line = 35:89]
  store float %tmp_12_i, float* @releaseSlope, align 4, !dbg !146 ; [debug line = 35:89]
  store i1 true, i1* @guard_variable_for_e_2, align 1, !dbg !146 ; [debug line = 35:89]
  br label %._crit_edge8

._crit_edge8:                                     ; preds = %codeRepl2, %._crit_edge7
  %sustainAmplitude_to_s = bitcast float %sustainAmplitude_rea to i32 ; [#uses=2 type=i32]
  %tmp_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sustainAmplitude_to_s, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp = trunc i32 %sustainAmplitude_to_s to i23  ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp_1, -1                 ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp, 0                   ; [#uses=1 type=i1]
  %tmp_3 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %tmp_4 = fcmp ogt float %sustainAmplitude_rea, 1.000000e+00, !dbg !147 ; [#uses=1 type=i1] [debug line = 39:2]
  %tmp_9 = and i1 %tmp_3, %tmp_4, !dbg !147       ; [#uses=1 type=i1] [debug line = 39:2]
  %sustainAmplitude_ass = select i1 %tmp_9, float 1.000000e+00, float %sustainAmplitude_rea, !dbg !147 ; [#uses=2 type=float] [debug line = 39:2]
  call void @llvm.dbg.value(metadata !{float %sustainAmplitude_ass}, i64 0, metadata !118), !dbg !147 ; [debug line = 39:2] [debug variable = sustainAmplitude]
  %guard_variable_for_e_3 = load i1* @guard_variable_for_e_1, align 1 ; [#uses=1 type=i1]
  %releaseTime_load = load i32* @releaseTime, align 4, !dbg !148 ; [#uses=1 type=i32] [debug line = 51:3]
  br i1 %guard_variable_for_e_3, label %._crit_edge9, label %codeRepl3, !dbg !150 ; [debug line = 42:42]

codeRepl3:                                        ; preds = %._crit_edge8
  store i1 true, i1* @guard_variable_for_e_1, align 1, !dbg !150 ; [debug line = 42:42]
  br label %._crit_edge9

._crit_edge9:                                     ; preds = %codeRepl3, %._crit_edge8
  %releaseTime_flag = phi i1 [ true, %codeRepl3 ], [ false, %._crit_edge8 ] ; [#uses=1 type=i1]
  %releaseTime_loc = phi i32 [ %releaseDuration_read, %codeRepl3 ], [ %releaseTime_load, %._crit_edge8 ] ; [#uses=2 type=i32]
  %guard_variable_for_e_4 = load i1* @guard_variable_for_e, align 1 ; [#uses=1 type=i1]
  %sustainTime_load = load i32* @sustainTime, align 4, !dbg !151 ; [#uses=1 type=i32] [debug line = 50:3]
  br i1 %guard_variable_for_e_4, label %._crit_edge10_ifconv, label %codeRepl4, !dbg !152 ; [debug line = 43:42]

codeRepl4:                                        ; preds = %._crit_edge9
  %tmp_16_i = add nsw i32 %decayDuration_read, 1, !dbg !152 ; [#uses=1 type=i32] [debug line = 43:42]
  store i1 true, i1* @guard_variable_for_e, align 1, !dbg !152 ; [debug line = 43:42]
  br label %._crit_edge10_ifconv

._crit_edge10_ifconv:                             ; preds = %codeRepl4, %._crit_edge9
  %sustainTime_flag = phi i1 [ true, %codeRepl4 ], [ false, %._crit_edge9 ] ; [#uses=1 type=i1]
  %sustainTime_loc = phi i32 [ %tmp_16_i, %codeRepl4 ], [ %sustainTime_load, %._crit_edge9 ] ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{float* %wave_in_V}, i64 0, metadata !153), !dbg !158 ; [debug line = 101:48@46:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %wave_in_V}, i64 0, metadata !160), !dbg !163 ; [debug line = 123:48@102:9@46:2] [debug variable = stream<float>.V]
  %tmp_26 = call float @_ssdm_op_Read.axis.volatile.floatP(float* %wave_in_V), !dbg !166 ; [#uses=4 type=float] [debug line = 125:9@102:9@46:2]
  call void @llvm.dbg.value(metadata !{float %tmp_26}, i64 0, metadata !168), !dbg !166 ; [debug line = 125:9@102:9@46:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_26}, i64 0, metadata !169), !dbg !170 ; [debug line = 126:9@102:9@46:2] [debug variable = resultAmplitude]
  %tmp_5 = icmp eq i32 %press_read, 0, !dbg !171  ; [#uses=4 type=i1] [debug line = 48:2]
  %wait_load = load i1* @wait, align 1            ; [#uses=2 type=i1]
  %tmp_6 = add nsw i32 %sustainTime_loc, 1, !dbg !151 ; [#uses=1 type=i32] [debug line = 50:3]
  %tmp_7 = add nsw i32 %releaseTime_loc, 1, !dbg !148 ; [#uses=2 type=i32] [debug line = 51:3]
  %not_tmp_5 = xor i1 %tmp_5, true                ; [#uses=3 type=i1]
  %releaseTime_new_1 = select i1 %tmp_5, i32 %releaseDuration_read, i32 %tmp_7 ; [#uses=1 type=i32]
  %releaseTime_loc_1 = select i1 %tmp_5, i32 %releaseTime_loc, i32 %tmp_7 ; [#uses=1 type=i32]
  %sustainTime_new_1 = select i1 %tmp_5, i32 %sustainTime_loc, i32 %tmp_6 ; [#uses=1 type=i32]
  %tmp_s = xor i1 %wait_load, true, !dbg !172     ; [#uses=1 type=i1] [debug line = 54:2]
  %tmp_8 = or i1 %tmp_s, %not_tmp_5, !dbg !172    ; [#uses=4 type=i1] [debug line = 54:2]
  %time_load = load i32* @time, align 4, !dbg !173 ; [#uses=1 type=i32] [debug line = 60:2]
  %tmp_2 = add nsw i32 %decayDuration_read, 1, !dbg !174 ; [#uses=1 type=i32] [debug line = 57:3]
  %tmp1 = or i1 %wait_load, %not_tmp_5, !dbg !172 ; [#uses=2 type=i1] [debug line = 54:2]
  %releaseTime_flag_1_s = or i1 %tmp1, %releaseTime_flag, !dbg !172 ; [#uses=1 type=i1] [debug line = 54:2]
  %releaseTime_new_1_re = select i1 %tmp_8, i32 %releaseTime_new_1, i32 %releaseDuration_read, !dbg !172 ; [#uses=1 type=i32] [debug line = 54:2]
  %releaseTime_loc_1_re = select i1 %tmp_8, i32 %releaseTime_loc_1, i32 %releaseDuration_read, !dbg !172 ; [#uses=1 type=i32] [debug line = 54:2]
  %sustainTime_flag_1_s = or i1 %tmp1, %sustainTime_flag, !dbg !172 ; [#uses=1 type=i1] [debug line = 54:2]
  %sustainTime_new_1_tm = select i1 %tmp_8, i32 %sustainTime_new_1, i32 %tmp_2, !dbg !172 ; [#uses=3 type=i32] [debug line = 54:2]
  %time_load_s = select i1 %tmp_8, i32 %time_load, i32 0, !dbg !172 ; [#uses=8 type=i32] [debug line = 54:2]
  %tmp_10 = icmp slt i32 %time_load_s, %attackDuration_read, !dbg !173 ; [#uses=4 type=i1] [debug line = 60:2]
  br i1 %sustainTime_flag_1_s, label %mergeST5, label %._crit_edge12.new6

mergeST:                                          ; preds = %._crit_edge12.new6
  store i32 %releaseTime_new_1_re, i32* @releaseTime, align 4, !dbg !150 ; [debug line = 42:42]
  br label %._crit_edge12.new_ifconv

._crit_edge12.new_ifconv:                         ; preds = %._crit_edge12.new6, %mergeST
  %attackSlope_load = load float* @attackSlope, align 4, !dbg !176 ; [#uses=1 type=float] [debug line = 61:3]
  %tmp_11 = sitofp i32 %time_load_s to float, !dbg !176 ; [#uses=1 type=float] [debug line = 61:3]
  %tmp_12 = fmul float %attackSlope_load, %tmp_11, !dbg !176 ; [#uses=1 type=float] [debug line = 61:3]
  %resultAmplitude_1 = fmul float %tmp_26, %tmp_12, !dbg !176 ; [#uses=1 type=float] [debug line = 61:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude_1}, i64 0, metadata !169), !dbg !176 ; [debug line = 61:3] [debug variable = resultAmplitude]
  %tmp_13 = icmp slt i32 %time_load_s, %decayDuration_read, !dbg !178 ; [#uses=2 type=i1] [debug line = 64:7]
  %decaySlope_load = load float* @decaySlope, align 4, !dbg !179 ; [#uses=1 type=float] [debug line = 65:3]
  %tmp_14 = sub nsw i32 %time_load_s, %attackDuration_read, !dbg !179 ; [#uses=1 type=i32] [debug line = 65:3]
  %tmp_15 = sitofp i32 %tmp_14 to float, !dbg !179 ; [#uses=1 type=float] [debug line = 65:3]
  %tmp_16 = fmul float %decaySlope_load, %tmp_15, !dbg !179 ; [#uses=1 type=float] [debug line = 65:3]
  %tmp_17 = fadd float %tmp_16, 1.000000e+00, !dbg !179 ; [#uses=1 type=float] [debug line = 65:3]
  %resultAmplitude_2 = fmul float %tmp_26, %tmp_17, !dbg !179 ; [#uses=1 type=float] [debug line = 65:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude_2}, i64 0, metadata !169), !dbg !179 ; [debug line = 65:3] [debug variable = resultAmplitude]
  %tmp_18 = icmp slt i32 %time_load_s, %sustainTime_new_1_tm, !dbg !181 ; [#uses=3 type=i1] [debug line = 68:7]
  %resultAmplitude_3 = fmul float %tmp_26, %sustainAmplitude_ass, !dbg !182 ; [#uses=1 type=float] [debug line = 69:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude_3}, i64 0, metadata !169), !dbg !182 ; [debug line = 69:3] [debug variable = resultAmplitude]
  %tmp_19 = icmp slt i32 %time_load_s, %releaseTime_loc_1_re, !dbg !184 ; [#uses=2 type=i1] [debug line = 72:7]
  %releaseSlope_load = load float* @releaseSlope, align 4, !dbg !185 ; [#uses=1 type=float] [debug line = 73:3]
  %tmp_20 = sub nsw i32 %time_load_s, %sustainTime_new_1_tm, !dbg !185 ; [#uses=1 type=i32] [debug line = 73:3]
  %tmp_21 = sitofp i32 %tmp_20 to float, !dbg !185 ; [#uses=1 type=float] [debug line = 73:3]
  %tmp_22 = fmul float %releaseSlope_load, %tmp_21, !dbg !185 ; [#uses=1 type=float] [debug line = 73:3]
  %tmp_23 = fadd float %tmp_22, %sustainAmplitude_ass, !dbg !185 ; [#uses=1 type=float] [debug line = 73:3]
  %resultAmplitude_4 = fmul float %tmp_26, %tmp_23, !dbg !185 ; [#uses=1 type=float] [debug line = 73:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude_4}, i64 0, metadata !169), !dbg !185 ; [debug line = 73:3] [debug variable = resultAmplitude]
  %not_tmp_s = xor i1 %tmp_10, true               ; [#uses=2 type=i1]
  %sel_tmp2 = and i1 %tmp_13, %not_tmp_s          ; [#uses=3 type=i1]
  %sel_tmp = xor i1 %sel_tmp2, %not_tmp_s         ; [#uses=1 type=i1]
  %sel_tmp6_demorgan = or i1 %tmp_10, %tmp_13     ; [#uses=3 type=i1]
  %tmp_19_not = xor i1 %tmp_18, true              ; [#uses=1 type=i1]
  %not_sel_tmp7 = or i1 %sel_tmp6_demorgan, %tmp_19_not ; [#uses=1 type=i1]
  %sel_tmp13_demorgan = or i1 %sel_tmp6_demorgan, %tmp_18 ; [#uses=2 type=i1]
  %tmp_20_not = xor i1 %tmp_19, true              ; [#uses=1 type=i1]
  %not_sel_tmp = or i1 %sel_tmp13_demorgan, %tmp_20_not ; [#uses=1 type=i1]
  %tmp2 = and i1 %not_sel_tmp7, %not_sel_tmp      ; [#uses=1 type=i1]
  %sel_tmp8 = and i1 %tmp2, %sel_tmp              ; [#uses=1 type=i1]
  %wait_flag_1 = or i1 %sel_tmp8, %not_tmp_5      ; [#uses=1 type=i1]
  %sel_tmp1 = xor i1 %sel_tmp6_demorgan, true     ; [#uses=1 type=i1]
  %sel_tmp3 = and i1 %tmp_18, %sel_tmp1           ; [#uses=2 type=i1]
  %sel_tmp4 = xor i1 %sel_tmp13_demorgan, true    ; [#uses=1 type=i1]
  %sel_tmp5 = and i1 %tmp_19, %sel_tmp4           ; [#uses=2 type=i1]
  %or_cond = or i1 %sel_tmp5, %sel_tmp3           ; [#uses=1 type=i1]
  %or_cond1 = or i1 %sel_tmp2, %tmp_10            ; [#uses=1 type=i1]
  %or_cond2 = or i1 %or_cond, %or_cond1           ; [#uses=1 type=i1]
  %not_or_cond = xor i1 %or_cond2, true           ; [#uses=1 type=i1]
  %resultAmplitude_5 = select i1 %tmp_10, float %resultAmplitude_1, float 0.000000e+00, !dbg !187 ; [#uses=1 type=float] [debug line = 145:31@106:9@83:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude_5}, i64 0, metadata !169), !dbg !179 ; [debug line = 65:3] [debug variable = resultAmplitude]
  %resultAmplitude_6 = select i1 %sel_tmp2, float %resultAmplitude_2, float %resultAmplitude_5, !dbg !187 ; [#uses=1 type=float] [debug line = 145:31@106:9@83:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude_6}, i64 0, metadata !169), !dbg !179 ; [debug line = 65:3] [debug variable = resultAmplitude]
  %resultAmplitude_7 = select i1 %sel_tmp3, float %resultAmplitude_3, float %resultAmplitude_6, !dbg !187 ; [#uses=1 type=float] [debug line = 145:31@106:9@83:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude_7}, i64 0, metadata !169), !dbg !179 ; [debug line = 65:3] [debug variable = resultAmplitude]
  %resultAmplitude = select i1 %sel_tmp5, float %resultAmplitude_4, float %resultAmplitude_7, !dbg !187 ; [#uses=1 type=float] [debug line = 145:31@106:9@83:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude}, i64 0, metadata !169), !dbg !179 ; [debug line = 65:3] [debug variable = resultAmplitude]
  %tmp_24 = add nsw i32 %time_load_s, 1, !dbg !194 ; [#uses=1 type=i32] [debug line = 81:2]
  call void @llvm.dbg.value(metadata !{float* %wave_out_V}, i64 0, metadata !195), !dbg !197 ; [debug line = 105:48@83:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %wave_out_V}, i64 0, metadata !198), !dbg !200 ; [debug line = 144:48@106:9@83:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude}, i64 0, metadata !201), !dbg !187 ; [debug line = 145:31@106:9@83:2] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.floatP(float* %wave_out_V, float %resultAmplitude), !dbg !202 ; [debug line = 146:9@106:9@83:2]
  store i32 %tmp_24, i32* @time, align 4, !dbg !203 ; [debug line = 55:3]
  br i1 %wait_flag_1, label %mergeST7, label %.new

mergeST5:                                         ; preds = %._crit_edge10_ifconv
  store i32 %sustainTime_new_1_tm, i32* @sustainTime, align 4, !dbg !152 ; [debug line = 43:42]
  br label %._crit_edge12.new6

._crit_edge12.new6:                               ; preds = %mergeST5, %._crit_edge10_ifconv
  br i1 %releaseTime_flag_1_s, label %mergeST, label %._crit_edge12.new_ifconv

mergeST7:                                         ; preds = %._crit_edge12.new_ifconv
  store i1 %not_or_cond, i1* @wait, align 1, !dbg !204 ; [debug line = 49:3]
  br label %.new

.new:                                             ; preds = %mergeST7, %._crit_edge12.new_ifconv
  ret void, !dbg !205                             ; [debug line = 84:1]
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

; [#uses=8]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=7]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=4]
define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak float @_ssdm_op_Read.s_axilite.float(float) {
entry:
  ret float %0
}

; [#uses=1]
define weak float @_ssdm_op_Read.axis.volatile.floatP(float*) {
entry:
  %empty = load float* %0                         ; [#uses=1 type=float]
  ret float %empty
}

; [#uses=1]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_4 = trunc i32 %empty to i8               ; [#uses=1 type=i8]
  ret i8 %empty_4
}

; [#uses=0]
declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

!opencl.kernels = !{!0, !7, !13, !15, !18}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &", metadata !"int", metadata !"int", metadata !"int", metadata !"float", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"wave_in", metadata !"wave_out", metadata !"press", metadata !"attackDuration", metadata !"decayDuration", metadata !"sustainAmplitude", metadata !"releaseDuration"}
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
!47 = metadata !{metadata !"sustainAmplitude", metadata !34, metadata !"float", i32 0, i32 31}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 31, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"releaseDuration", metadata !34, metadata !"int", i32 0, i32 31}
!52 = metadata !{i32 786689, metadata !53, metadata !"releaseDuration", metadata !54, i32 117440528, metadata !116, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!53 = metadata !{i32 786478, i32 0, metadata !54, metadata !"envelope", metadata !"envelope", metadata !"_Z8envelopeRN3hls6streamIfEES2_iiifi", metadata !54, i32 7, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !68, i32 18} ; [ DW_TAG_subprogram ]
!54 = metadata !{i32 786473, metadata !"src/Envelope.cpp", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!55 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!56 = metadata !{null, metadata !57, metadata !57, metadata !116, metadata !116, metadata !116, metadata !63, metadata !116}
!57 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !58} ; [ DW_TAG_reference_type ]
!58 = metadata !{i32 786434, metadata !59, metadata !"stream<float>", metadata !60, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !61, i32 0, null, metadata !114} ; [ DW_TAG_class_type ]
!59 = metadata !{i32 786489, null, metadata !"hls", metadata !60, i32 69} ; [ DW_TAG_namespace ]
!60 = metadata !{i32 786473, metadata !"/home/austin/Desktop/Vivado_HLS/2017.2/common/technology/autopilot/hls_stream.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!61 = metadata !{metadata !62, metadata !64, metadata !70, metadata !76, metadata !81, metadata !84, metadata !88, metadata !93, metadata !98, metadata !99, metadata !100, metadata !103, metadata !106, metadata !107, metadata !110}
!62 = metadata !{i32 786445, metadata !58, metadata !"V", metadata !60, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !63} ; [ DW_TAG_member ]
!63 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!64 = metadata !{i32 786478, i32 0, metadata !58, metadata !"stream", metadata !"stream", metadata !"", metadata !60, i32 83, metadata !65, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !68, i32 83} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{null, metadata !67}
!67 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !58} ; [ DW_TAG_pointer_type ]
!68 = metadata !{metadata !69}
!69 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!70 = metadata !{i32 786478, i32 0, metadata !58, metadata !"stream", metadata !"stream", metadata !"", metadata !60, i32 86, metadata !71, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !68, i32 86} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{null, metadata !67, metadata !73}
!73 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ]
!74 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_const_type ]
!75 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!76 = metadata !{i32 786478, i32 0, metadata !58, metadata !"stream", metadata !"stream", metadata !"", metadata !60, i32 91, metadata !77, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !68, i32 91} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{null, metadata !67, metadata !79}
!79 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_reference_type ]
!80 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !58} ; [ DW_TAG_const_type ]
!81 = metadata !{i32 786478, i32 0, metadata !58, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !60, i32 94, metadata !82, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !68, i32 94} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!83 = metadata !{metadata !57, metadata !67, metadata !79}
!84 = metadata !{i32 786478, i32 0, metadata !58, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !60, i32 101, metadata !85, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !68, i32 101} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!86 = metadata !{null, metadata !67, metadata !87}
!87 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_reference_type ]
!88 = metadata !{i32 786478, i32 0, metadata !58, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !60, i32 105, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !68, i32 105} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!90 = metadata !{null, metadata !67, metadata !91}
!91 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_reference_type ]
!92 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_const_type ]
!93 = metadata !{i32 786478, i32 0, metadata !58, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !60, i32 112, metadata !94, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !68, i32 112} ; [ DW_TAG_subprogram ]
!94 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!95 = metadata !{metadata !96, metadata !97}
!96 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!97 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !80} ; [ DW_TAG_pointer_type ]
!98 = metadata !{i32 786478, i32 0, metadata !58, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !60, i32 117, metadata !94, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !68, i32 117} ; [ DW_TAG_subprogram ]
!99 = metadata !{i32 786478, i32 0, metadata !58, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !60, i32 123, metadata !85, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !68, i32 123} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 786478, i32 0, metadata !58, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !60, i32 129, metadata !101, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !68, i32 129} ; [ DW_TAG_subprogram ]
!101 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!102 = metadata !{metadata !63, metadata !67}
!103 = metadata !{i32 786478, i32 0, metadata !58, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !60, i32 136, metadata !104, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !68, i32 136} ; [ DW_TAG_subprogram ]
!104 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!105 = metadata !{metadata !96, metadata !67, metadata !87}
!106 = metadata !{i32 786478, i32 0, metadata !58, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !60, i32 144, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !68, i32 144} ; [ DW_TAG_subprogram ]
!107 = metadata !{i32 786478, i32 0, metadata !58, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !60, i32 150, metadata !108, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !68, i32 150} ; [ DW_TAG_subprogram ]
!108 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!109 = metadata !{metadata !96, metadata !67, metadata !91}
!110 = metadata !{i32 786478, i32 0, metadata !58, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !60, i32 157, metadata !111, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !68, i32 157} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!112 = metadata !{metadata !113, metadata !67}
!113 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!114 = metadata !{metadata !115}
!115 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !63, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!116 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!117 = metadata !{i32 16, i32 6, metadata !53, null}
!118 = metadata !{i32 786689, metadata !53, metadata !"sustainAmplitude", metadata !54, i32 100663311, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!119 = metadata !{i32 15, i32 8, metadata !53, null}
!120 = metadata !{i32 786689, metadata !53, metadata !"decayDuration", metadata !54, i32 83886094, metadata !116, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 14, i32 6, metadata !53, null}
!122 = metadata !{i32 786689, metadata !53, metadata !"attackDuration", metadata !54, i32 67108877, metadata !116, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 13, i32 6, metadata !53, null}
!124 = metadata !{i32 786689, metadata !53, metadata !"press", metadata !54, i32 50331660, metadata !116, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 12, i32 6, metadata !53, null}
!126 = metadata !{i32 790531, metadata !127, metadata !"wave_in.V", null, i32 9, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!127 = metadata !{i32 786689, metadata !53, metadata !"wave_in", metadata !54, i32 16777225, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!128 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_pointer_type ]
!129 = metadata !{i32 786438, metadata !59, metadata !"stream<float>", metadata !60, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !130, i32 0, null, metadata !114} ; [ DW_TAG_class_field_type ]
!130 = metadata !{metadata !62}
!131 = metadata !{i32 9, i32 23, metadata !53, null}
!132 = metadata !{i32 790531, metadata !133, metadata !"wave_out.V", null, i32 10, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!133 = metadata !{i32 786689, metadata !53, metadata !"wave_out", metadata !54, i32 33554442, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!134 = metadata !{i32 10, i32 23, metadata !53, null}
!135 = metadata !{i32 21, i32 1, metadata !136, null}
!136 = metadata !{i32 786443, metadata !53, i32 18, i32 2, metadata !54, i32 0} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 23, i32 1, metadata !136, null}
!138 = metadata !{i32 24, i32 1, metadata !136, null}
!139 = metadata !{i32 26, i32 1, metadata !136, null}
!140 = metadata !{i32 27, i32 1, metadata !136, null}
!141 = metadata !{i32 28, i32 1, metadata !136, null}
!142 = metadata !{i32 29, i32 1, metadata !136, null}
!143 = metadata !{i32 30, i32 1, metadata !136, null}
!144 = metadata !{i32 33, i32 52, metadata !136, null}
!145 = metadata !{i32 34, i32 90, metadata !136, null}
!146 = metadata !{i32 35, i32 89, metadata !136, null}
!147 = metadata !{i32 39, i32 2, metadata !136, null}
!148 = metadata !{i32 51, i32 3, metadata !149, null}
!149 = metadata !{i32 786443, metadata !136, i32 48, i32 11, metadata !54, i32 1} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 42, i32 42, metadata !136, null}
!151 = metadata !{i32 50, i32 3, metadata !149, null}
!152 = metadata !{i32 43, i32 42, metadata !136, null}
!153 = metadata !{i32 790531, metadata !154, metadata !"stream<float>.V", null, i32 101, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!154 = metadata !{i32 786689, metadata !155, metadata !"this", metadata !60, i32 16777317, metadata !156, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!155 = metadata !{i32 786478, i32 0, metadata !59, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !60, i32 101, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !84, metadata !68, i32 101} ; [ DW_TAG_subprogram ]
!156 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ]
!157 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !129} ; [ DW_TAG_pointer_type ]
!158 = metadata !{i32 101, i32 48, metadata !155, metadata !159}
!159 = metadata !{i32 46, i32 2, metadata !136, null}
!160 = metadata !{i32 790531, metadata !161, metadata !"stream<float>.V", null, i32 123, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!161 = metadata !{i32 786689, metadata !162, metadata !"this", metadata !60, i32 16777339, metadata !156, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!162 = metadata !{i32 786478, i32 0, metadata !59, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !60, i32 123, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !99, metadata !68, i32 123} ; [ DW_TAG_subprogram ]
!163 = metadata !{i32 123, i32 48, metadata !162, metadata !164}
!164 = metadata !{i32 102, i32 9, metadata !165, metadata !159}
!165 = metadata !{i32 786443, metadata !155, i32 101, i32 82, metadata !60, i32 10} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 125, i32 9, metadata !167, metadata !164}
!167 = metadata !{i32 786443, metadata !162, i32 123, i32 73, metadata !60, i32 11} ; [ DW_TAG_lexical_block ]
!168 = metadata !{i32 786688, metadata !167, metadata !"tmp", metadata !60, i32 124, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 786688, metadata !136, metadata !"resultAmplitude", metadata !54, i32 37, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!170 = metadata !{i32 126, i32 9, metadata !167, metadata !164}
!171 = metadata !{i32 48, i32 2, metadata !136, null}
!172 = metadata !{i32 54, i32 2, metadata !136, null}
!173 = metadata !{i32 60, i32 2, metadata !136, null}
!174 = metadata !{i32 57, i32 3, metadata !175, null}
!175 = metadata !{i32 786443, metadata !136, i32 54, i32 10, metadata !54, i32 2} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 61, i32 3, metadata !177, null}
!177 = metadata !{i32 786443, metadata !136, i32 60, i32 27, metadata !54, i32 3} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 64, i32 7, metadata !136, null}
!179 = metadata !{i32 65, i32 3, metadata !180, null}
!180 = metadata !{i32 786443, metadata !136, i32 64, i32 31, metadata !54, i32 4} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 68, i32 7, metadata !136, null}
!182 = metadata !{i32 69, i32 3, metadata !183, null}
!183 = metadata !{i32 786443, metadata !136, i32 68, i32 30, metadata !54, i32 5} ; [ DW_TAG_lexical_block ]
!184 = metadata !{i32 72, i32 7, metadata !136, null}
!185 = metadata !{i32 73, i32 3, metadata !186, null}
!186 = metadata !{i32 786443, metadata !136, i32 72, i32 29, metadata !54, i32 6} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 145, i32 31, metadata !188, metadata !190}
!188 = metadata !{i32 786443, metadata !189, i32 144, i32 79, metadata !60, i32 9} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 786478, i32 0, metadata !59, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !60, i32 144, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !106, metadata !68, i32 144} ; [ DW_TAG_subprogram ]
!190 = metadata !{i32 106, i32 9, metadata !191, metadata !193}
!191 = metadata !{i32 786443, metadata !192, i32 105, i32 88, metadata !60, i32 8} ; [ DW_TAG_lexical_block ]
!192 = metadata !{i32 786478, i32 0, metadata !59, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !60, i32 105, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !88, metadata !68, i32 105} ; [ DW_TAG_subprogram ]
!193 = metadata !{i32 83, i32 2, metadata !136, null}
!194 = metadata !{i32 81, i32 2, metadata !136, null}
!195 = metadata !{i32 790531, metadata !196, metadata !"stream<float>.V", null, i32 105, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!196 = metadata !{i32 786689, metadata !192, metadata !"this", metadata !60, i32 16777321, metadata !156, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!197 = metadata !{i32 105, i32 48, metadata !192, metadata !193}
!198 = metadata !{i32 790531, metadata !199, metadata !"stream<float>.V", null, i32 144, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!199 = metadata !{i32 786689, metadata !189, metadata !"this", metadata !60, i32 16777360, metadata !156, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!200 = metadata !{i32 144, i32 48, metadata !189, metadata !190}
!201 = metadata !{i32 786688, metadata !188, metadata !"tmp", metadata !60, i32 145, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!202 = metadata !{i32 146, i32 9, metadata !188, metadata !190}
!203 = metadata !{i32 55, i32 3, metadata !175, null}
!204 = metadata !{i32 49, i32 3, metadata !149, null}
!205 = metadata !{i32 84, i32 1, metadata !136, null}
