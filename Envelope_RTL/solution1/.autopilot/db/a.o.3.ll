; ModuleID = '/root/repo/new/ECE1373_GhostSynth/modules/Envelope/Envelope_RTL/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wait = internal unnamed_addr global i1 false     ; [#uses=2 type=i1*]
@time = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@sustainTime = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@releaseTime = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@releaseSlope = internal unnamed_addr global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@lastpress = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@envelope_str = internal unnamed_addr constant [9 x i8] c"envelope\00" ; [#uses=1 type=[9 x i8]*]
@p_str5 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=5 type=[9 x i8]*]
@p_str4 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=5 type=[10 x i8]*]
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=2 type=[5 x i8]*]
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=2 type=[5 x i8]*]
@p_str1 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=41 type=[1 x i8]*]

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=30]
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
  %sustainAmplitude_rea = call float @_ssdm_op_Read.s_axilite.float(float %sustainAmplitude) ; [#uses=4 type=float]
  call void @llvm.dbg.value(metadata !{float %sustainAmplitude_rea}, i64 0, metadata !118), !dbg !119 ; [debug line = 15:8] [debug variable = sustainAmplitude]
  %decayDuration_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %decayDuration) ; [#uses=5 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %decayDuration_read}, i64 0, metadata !120), !dbg !121 ; [debug line = 14:6] [debug variable = decayDuration]
  %attackDuration_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %attackDuration) ; [#uses=4 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %attackDuration_read}, i64 0, metadata !122), !dbg !123 ; [debug line = 13:6] [debug variable = attackDuration]
  %press_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %press) ; [#uses=2 type=i32]
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
  %tmp_1 = sitofp i32 %attackDuration_read to float, !dbg !144 ; [#uses=1 type=float] [debug line = 34:45]
  %attackSlope = fdiv float 1.000000e+00, %tmp_1, !dbg !144 ; [#uses=1 type=float] [debug line = 34:45]
  call void @llvm.dbg.value(metadata !{float %attackSlope}, i64 0, metadata !145), !dbg !144 ; [debug line = 34:45] [debug variable = attackSlope]
  %tmp_2 = fadd float %sustainAmplitude_rea, -1.000000e+00, !dbg !146 ; [#uses=1 type=float] [debug line = 35:83]
  %tmp_3 = sub nsw i32 %decayDuration_read, %attackDuration_read, !dbg !146 ; [#uses=1 type=i32] [debug line = 35:83]
  %tmp_4 = sitofp i32 %tmp_3 to float, !dbg !146  ; [#uses=1 type=float] [debug line = 35:83]
  %decaySlope = fdiv float %tmp_2, %tmp_4, !dbg !146 ; [#uses=1 type=float] [debug line = 35:83]
  call void @llvm.dbg.value(metadata !{float %decaySlope}, i64 0, metadata !147), !dbg !146 ; [debug line = 35:83] [debug variable = decaySlope]
  %sustainAmplitude_to_s = bitcast float %sustainAmplitude_rea to i32 ; [#uses=2 type=i32]
  %tmp_5 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sustainAmplitude_to_s, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp = trunc i32 %sustainAmplitude_to_s to i23  ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp_5, -1                 ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp, 0                   ; [#uses=1 type=i1]
  %tmp_30 = or i1 %notrhs, %notlhs                ; [#uses=1 type=i1]
  %tmp_32 = fcmp ogt float %sustainAmplitude_rea, 1.000000e+00, !dbg !148 ; [#uses=1 type=i1] [debug line = 40:2]
  %tmp_33 = and i1 %tmp_30, %tmp_32, !dbg !148    ; [#uses=1 type=i1] [debug line = 40:2]
  %sustainAmplitude_ass = select i1 %tmp_33, float 1.000000e+00, float %sustainAmplitude_rea, !dbg !148 ; [#uses=3 type=float] [debug line = 40:2]
  call void @llvm.dbg.value(metadata !{float %sustainAmplitude_ass}, i64 0, metadata !118), !dbg !148 ; [debug line = 40:2] [debug variable = sustainAmplitude]
  %lastpress_load = load i32* @lastpress, align 4, !dbg !149 ; [#uses=1 type=i32] [debug line = 47:2]
  %tmp_6 = icmp ne i32 %lastpress_load, 0, !dbg !149 ; [#uses=1 type=i1] [debug line = 47:2]
  %tmp_7 = icmp eq i32 %press_read, 0, !dbg !149  ; [#uses=5 type=i1] [debug line = 47:2]
  %or_cond_4 = or i1 %tmp_6, %tmp_7, !dbg !149    ; [#uses=1 type=i1] [debug line = 47:2]
  %releaseTime_load = load i32* @releaseTime, align 4, !dbg !150 ; [#uses=1 type=i32] [debug line = 63:3]
  %sustainTime_load = load i32* @sustainTime, align 4, !dbg !152 ; [#uses=1 type=i32] [debug line = 62:3]
  br i1 %or_cond_4, label %._crit_edge_ifconv, label %1, !dbg !149 ; [debug line = 47:2]

; <label>:1                                       ; preds = %0
  %tmp_8 = add nsw i32 %decayDuration_read, 1, !dbg !153 ; [#uses=1 type=i32] [debug line = 49:3]
  %tmp_9_to_int = bitcast float %sustainAmplitude_ass to i32, !dbg !155 ; [#uses=1 type=i32] [debug line = 50:3]
  %tmp_9_neg = xor i32 %tmp_9_to_int, -2147483648, !dbg !155 ; [#uses=1 type=i32] [debug line = 50:3]
  %tmp_9 = bitcast i32 %tmp_9_neg to float, !dbg !155 ; [#uses=1 type=float] [debug line = 50:3]
  %tmp_s = sub nsw i32 %releaseDuration_read, %decayDuration_read, !dbg !155 ; [#uses=1 type=i32] [debug line = 50:3]
  %tmp_10 = sitofp i32 %tmp_s to float, !dbg !155 ; [#uses=1 type=float] [debug line = 50:3]
  %tmp_11 = fdiv float %tmp_9, %tmp_10, !dbg !155 ; [#uses=1 type=float] [debug line = 50:3]
  store float %tmp_11, float* @releaseSlope, align 4, !dbg !155 ; [debug line = 50:3]
  br label %._crit_edge_ifconv, !dbg !156         ; [debug line = 51:2]

._crit_edge_ifconv:                               ; preds = %1, %0
  %releaseTime_flag = phi i1 [ false, %0 ], [ true, %1 ] ; [#uses=1 type=i1]
  %releaseTime_loc = phi i32 [ %releaseTime_load, %0 ], [ %releaseDuration_read, %1 ] ; [#uses=2 type=i32]
  %sustainTime_loc = phi i32 [ %sustainTime_load, %0 ], [ %tmp_8, %1 ] ; [#uses=2 type=i32]
  store i32 %press_read, i32* @lastpress, align 4, !dbg !157 ; [debug line = 53:2]
  call void @llvm.dbg.value(metadata !{float* %wave_in_V}, i64 0, metadata !158), !dbg !163 ; [debug line = 101:48@58:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %wave_in_V}, i64 0, metadata !165), !dbg !168 ; [debug line = 123:48@102:9@58:2] [debug variable = stream<float>.V]
  %tmp_36 = call float @_ssdm_op_Read.axis.volatile.floatP(float* %wave_in_V), !dbg !171 ; [#uses=4 type=float] [debug line = 125:9@102:9@58:2]
  call void @llvm.dbg.value(metadata !{float %tmp_36}, i64 0, metadata !173), !dbg !171 ; [debug line = 125:9@102:9@58:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_36}, i64 0, metadata !174), !dbg !175 ; [debug line = 126:9@102:9@58:2] [debug variable = resultAmplitude]
  %wait_load = load i1* @wait, align 1            ; [#uses=2 type=i1]
  %tmp_12 = add nsw i32 %sustainTime_loc, 1, !dbg !152 ; [#uses=1 type=i32] [debug line = 62:3]
  %tmp_13 = add nsw i32 %releaseTime_loc, 1, !dbg !150 ; [#uses=2 type=i32] [debug line = 63:3]
  %not_tmp_7 = xor i1 %tmp_7, true                ; [#uses=3 type=i1]
  %releaseTime_new_1 = select i1 %tmp_7, i32 %releaseDuration_read, i32 %tmp_13 ; [#uses=1 type=i32]
  %releaseTime_loc_1 = select i1 %tmp_7, i32 %releaseTime_loc, i32 %tmp_13 ; [#uses=1 type=i32]
  %sustainTime_new_1 = select i1 %tmp_7, i32 %sustainTime_loc, i32 %tmp_12 ; [#uses=1 type=i32]
  %tmp_34 = xor i1 %wait_load, true, !dbg !176    ; [#uses=1 type=i1] [debug line = 66:2]
  %tmp_14 = or i1 %tmp_34, %not_tmp_7, !dbg !176  ; [#uses=4 type=i1] [debug line = 66:2]
  %time_load = load i32* @time, align 4, !dbg !177 ; [#uses=1 type=i32] [debug line = 72:2]
  %tmp_15 = add nsw i32 %decayDuration_read, 1, !dbg !178 ; [#uses=1 type=i32] [debug line = 69:3]
  %tmp1 = or i1 %wait_load, %not_tmp_7, !dbg !176 ; [#uses=1 type=i1] [debug line = 66:2]
  %releaseTime_flag_1_s = or i1 %tmp1, %releaseTime_flag, !dbg !176 ; [#uses=1 type=i1] [debug line = 66:2]
  %releaseTime_new_1_re = select i1 %tmp_14, i32 %releaseTime_new_1, i32 %releaseDuration_read, !dbg !176 ; [#uses=1 type=i32] [debug line = 66:2]
  %releaseTime_loc_1_re = select i1 %tmp_14, i32 %releaseTime_loc_1, i32 %releaseDuration_read, !dbg !176 ; [#uses=1 type=i32] [debug line = 66:2]
  %sustainTime_new_1_tm = select i1 %tmp_14, i32 %sustainTime_new_1, i32 %tmp_15, !dbg !176 ; [#uses=3 type=i32] [debug line = 66:2]
  %time_load_s = select i1 %tmp_14, i32 %time_load, i32 0, !dbg !176 ; [#uses=8 type=i32] [debug line = 66:2]
  %tmp_16 = icmp slt i32 %time_load_s, %attackDuration_read, !dbg !177 ; [#uses=4 type=i1] [debug line = 72:2]
  br i1 %releaseTime_flag_1_s, label %mergeST1, label %._crit_edge8.new_ifconv

._crit_edge8.new_ifconv:                          ; preds = %mergeST1, %._crit_edge_ifconv
  %tmp_17 = sitofp i32 %time_load_s to float, !dbg !180 ; [#uses=1 type=float] [debug line = 73:3]
  %tmp_18 = fmul float %attackSlope, %tmp_17, !dbg !180 ; [#uses=1 type=float] [debug line = 73:3]
  %resultAmplitude_1 = fmul float %tmp_36, %tmp_18, !dbg !180 ; [#uses=1 type=float] [debug line = 73:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude_1}, i64 0, metadata !174), !dbg !180 ; [debug line = 73:3] [debug variable = resultAmplitude]
  %tmp_19 = icmp slt i32 %time_load_s, %decayDuration_read, !dbg !182 ; [#uses=2 type=i1] [debug line = 76:7]
  %tmp_20 = sub nsw i32 %time_load_s, %attackDuration_read, !dbg !183 ; [#uses=1 type=i32] [debug line = 77:3]
  %tmp_21 = sitofp i32 %tmp_20 to float, !dbg !183 ; [#uses=1 type=float] [debug line = 77:3]
  %tmp_22 = fmul float %decaySlope, %tmp_21, !dbg !183 ; [#uses=1 type=float] [debug line = 77:3]
  %tmp_23 = fadd float %tmp_22, 1.000000e+00, !dbg !183 ; [#uses=1 type=float] [debug line = 77:3]
  %resultAmplitude_2 = fmul float %tmp_36, %tmp_23, !dbg !183 ; [#uses=1 type=float] [debug line = 77:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude_2}, i64 0, metadata !174), !dbg !183 ; [debug line = 77:3] [debug variable = resultAmplitude]
  %tmp_24 = icmp slt i32 %time_load_s, %sustainTime_new_1_tm, !dbg !185 ; [#uses=3 type=i1] [debug line = 80:7]
  %resultAmplitude_3 = fmul float %tmp_36, %sustainAmplitude_ass, !dbg !186 ; [#uses=1 type=float] [debug line = 81:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude_3}, i64 0, metadata !174), !dbg !186 ; [debug line = 81:3] [debug variable = resultAmplitude]
  %tmp_25 = icmp slt i32 %time_load_s, %releaseTime_loc_1_re, !dbg !188 ; [#uses=2 type=i1] [debug line = 84:7]
  %releaseSlope_load = load float* @releaseSlope, align 4, !dbg !189 ; [#uses=1 type=float] [debug line = 85:3]
  %tmp_26 = sub nsw i32 %time_load_s, %sustainTime_new_1_tm, !dbg !189 ; [#uses=1 type=i32] [debug line = 85:3]
  %tmp_27 = sitofp i32 %tmp_26 to float, !dbg !189 ; [#uses=1 type=float] [debug line = 85:3]
  %tmp_28 = fmul float %releaseSlope_load, %tmp_27, !dbg !189 ; [#uses=1 type=float] [debug line = 85:3]
  %tmp_29 = fadd float %tmp_28, %sustainAmplitude_ass, !dbg !189 ; [#uses=1 type=float] [debug line = 85:3]
  %resultAmplitude_4 = fmul float %tmp_36, %tmp_29, !dbg !189 ; [#uses=1 type=float] [debug line = 85:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude_4}, i64 0, metadata !174), !dbg !189 ; [debug line = 85:3] [debug variable = resultAmplitude]
  %not_tmp_s = xor i1 %tmp_16, true               ; [#uses=2 type=i1]
  %sel_tmp2 = and i1 %tmp_19, %not_tmp_s          ; [#uses=3 type=i1]
  %sel_tmp = xor i1 %sel_tmp2, %not_tmp_s         ; [#uses=1 type=i1]
  %sel_tmp6_demorgan = or i1 %tmp_16, %tmp_19     ; [#uses=3 type=i1]
  %tmp_24_not = xor i1 %tmp_24, true              ; [#uses=1 type=i1]
  %not_sel_tmp7 = or i1 %sel_tmp6_demorgan, %tmp_24_not ; [#uses=1 type=i1]
  %sel_tmp13_demorgan = or i1 %sel_tmp6_demorgan, %tmp_24 ; [#uses=2 type=i1]
  %tmp_25_not = xor i1 %tmp_25, true              ; [#uses=1 type=i1]
  %not_sel_tmp = or i1 %sel_tmp13_demorgan, %tmp_25_not ; [#uses=1 type=i1]
  %tmp2 = and i1 %not_sel_tmp7, %not_sel_tmp      ; [#uses=1 type=i1]
  %sel_tmp8 = and i1 %tmp2, %sel_tmp              ; [#uses=1 type=i1]
  %wait_flag_1 = or i1 %sel_tmp8, %not_tmp_7      ; [#uses=1 type=i1]
  %sel_tmp1 = xor i1 %sel_tmp6_demorgan, true     ; [#uses=1 type=i1]
  %sel_tmp3 = and i1 %tmp_24, %sel_tmp1           ; [#uses=2 type=i1]
  %sel_tmp4 = xor i1 %sel_tmp13_demorgan, true    ; [#uses=1 type=i1]
  %sel_tmp5 = and i1 %tmp_25, %sel_tmp4           ; [#uses=2 type=i1]
  %or_cond = or i1 %sel_tmp5, %sel_tmp3           ; [#uses=1 type=i1]
  %or_cond1 = or i1 %sel_tmp2, %tmp_16            ; [#uses=1 type=i1]
  %or_cond2 = or i1 %or_cond, %or_cond1           ; [#uses=1 type=i1]
  %not_or_cond = xor i1 %or_cond2, true           ; [#uses=1 type=i1]
  %resultAmplitude_5 = select i1 %tmp_16, float %resultAmplitude_1, float 0.000000e+00, !dbg !191 ; [#uses=1 type=float] [debug line = 145:31@106:9@95:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude_5}, i64 0, metadata !174), !dbg !183 ; [debug line = 77:3] [debug variable = resultAmplitude]
  %resultAmplitude_6 = select i1 %sel_tmp2, float %resultAmplitude_2, float %resultAmplitude_5, !dbg !191 ; [#uses=1 type=float] [debug line = 145:31@106:9@95:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude_6}, i64 0, metadata !174), !dbg !183 ; [debug line = 77:3] [debug variable = resultAmplitude]
  %resultAmplitude_7 = select i1 %sel_tmp3, float %resultAmplitude_3, float %resultAmplitude_6, !dbg !191 ; [#uses=1 type=float] [debug line = 145:31@106:9@95:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude_7}, i64 0, metadata !174), !dbg !183 ; [debug line = 77:3] [debug variable = resultAmplitude]
  %resultAmplitude = select i1 %sel_tmp5, float %resultAmplitude_4, float %resultAmplitude_7, !dbg !191 ; [#uses=1 type=float] [debug line = 145:31@106:9@95:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude}, i64 0, metadata !174), !dbg !183 ; [debug line = 77:3] [debug variable = resultAmplitude]
  %tmp_31 = add nsw i32 %time_load_s, 1, !dbg !198 ; [#uses=1 type=i32] [debug line = 93:2]
  call void @llvm.dbg.value(metadata !{float* %wave_out_V}, i64 0, metadata !199), !dbg !201 ; [debug line = 105:48@95:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %wave_out_V}, i64 0, metadata !202), !dbg !204 ; [debug line = 144:48@106:9@95:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude}, i64 0, metadata !205), !dbg !191 ; [debug line = 145:31@106:9@95:2] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.floatP(float* %wave_out_V, float %resultAmplitude), !dbg !206 ; [debug line = 146:9@106:9@95:2]
  store i32 %tmp_31, i32* @time, align 4, !dbg !207 ; [debug line = 67:3]
  br i1 %wait_flag_1, label %mergeST3, label %.new

mergeST1:                                         ; preds = %._crit_edge_ifconv
  store i32 %sustainTime_new_1_tm, i32* @sustainTime, align 4, !dbg !153 ; [debug line = 49:3]
  store i32 %releaseTime_new_1_re, i32* @releaseTime, align 4, !dbg !208 ; [debug line = 48:3]
  br label %._crit_edge8.new_ifconv

mergeST3:                                         ; preds = %._crit_edge8.new_ifconv
  store i1 %not_or_cond, i1* @wait, align 1, !dbg !209 ; [debug line = 61:3]
  br label %.new

.new:                                             ; preds = %mergeST3, %._crit_edge8.new_ifconv
  ret void, !dbg !210                             ; [debug line = 96:1]
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
  %empty_5 = trunc i32 %empty to i8               ; [#uses=1 type=i8]
  ret i8 %empty_5
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
!54 = metadata !{i32 786473, metadata !"src/Envelope.cpp", metadata !"/root/repo/new/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!55 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!56 = metadata !{null, metadata !57, metadata !57, metadata !116, metadata !116, metadata !116, metadata !63, metadata !116}
!57 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !58} ; [ DW_TAG_reference_type ]
!58 = metadata !{i32 786434, metadata !59, metadata !"stream<float>", metadata !60, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !61, i32 0, null, metadata !114} ; [ DW_TAG_class_type ]
!59 = metadata !{i32 786489, null, metadata !"hls", metadata !60, i32 69} ; [ DW_TAG_namespace ]
!60 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot/hls_stream.h", metadata !"/root/repo/new/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
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
!144 = metadata !{i32 34, i32 45, metadata !136, null}
!145 = metadata !{i32 786688, metadata !136, metadata !"attackSlope", metadata !54, i32 34, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 35, i32 83, metadata !136, null}
!147 = metadata !{i32 786688, metadata !136, metadata !"decaySlope", metadata !54, i32 35, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!148 = metadata !{i32 40, i32 2, metadata !136, null}
!149 = metadata !{i32 47, i32 2, metadata !136, null}
!150 = metadata !{i32 63, i32 3, metadata !151, null}
!151 = metadata !{i32 786443, metadata !136, i32 60, i32 16, metadata !54, i32 2} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 62, i32 3, metadata !151, null}
!153 = metadata !{i32 49, i32 3, metadata !154, null}
!154 = metadata !{i32 786443, metadata !136, i32 47, i32 36, metadata !54, i32 1} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 50, i32 3, metadata !154, null}
!156 = metadata !{i32 51, i32 2, metadata !154, null}
!157 = metadata !{i32 53, i32 2, metadata !136, null}
!158 = metadata !{i32 790531, metadata !159, metadata !"stream<float>.V", null, i32 101, metadata !162, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!159 = metadata !{i32 786689, metadata !160, metadata !"this", metadata !60, i32 16777317, metadata !161, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!160 = metadata !{i32 786478, i32 0, metadata !59, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !60, i32 101, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !84, metadata !68, i32 101} ; [ DW_TAG_subprogram ]
!161 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ]
!162 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !129} ; [ DW_TAG_pointer_type ]
!163 = metadata !{i32 101, i32 48, metadata !160, metadata !164}
!164 = metadata !{i32 58, i32 2, metadata !136, null}
!165 = metadata !{i32 790531, metadata !166, metadata !"stream<float>.V", null, i32 123, metadata !162, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!166 = metadata !{i32 786689, metadata !167, metadata !"this", metadata !60, i32 16777339, metadata !161, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!167 = metadata !{i32 786478, i32 0, metadata !59, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !60, i32 123, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !99, metadata !68, i32 123} ; [ DW_TAG_subprogram ]
!168 = metadata !{i32 123, i32 48, metadata !167, metadata !169}
!169 = metadata !{i32 102, i32 9, metadata !170, metadata !164}
!170 = metadata !{i32 786443, metadata !160, i32 101, i32 82, metadata !60, i32 11} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 125, i32 9, metadata !172, metadata !169}
!172 = metadata !{i32 786443, metadata !167, i32 123, i32 73, metadata !60, i32 12} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 786688, metadata !172, metadata !"tmp", metadata !60, i32 124, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 786688, metadata !136, metadata !"resultAmplitude", metadata !54, i32 38, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!175 = metadata !{i32 126, i32 9, metadata !172, metadata !169}
!176 = metadata !{i32 66, i32 2, metadata !136, null}
!177 = metadata !{i32 72, i32 2, metadata !136, null}
!178 = metadata !{i32 69, i32 3, metadata !179, null}
!179 = metadata !{i32 786443, metadata !136, i32 66, i32 10, metadata !54, i32 3} ; [ DW_TAG_lexical_block ]
!180 = metadata !{i32 73, i32 3, metadata !181, null}
!181 = metadata !{i32 786443, metadata !136, i32 72, i32 27, metadata !54, i32 4} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 76, i32 7, metadata !136, null}
!183 = metadata !{i32 77, i32 3, metadata !184, null}
!184 = metadata !{i32 786443, metadata !136, i32 76, i32 31, metadata !54, i32 5} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 80, i32 7, metadata !136, null}
!186 = metadata !{i32 81, i32 3, metadata !187, null}
!187 = metadata !{i32 786443, metadata !136, i32 80, i32 30, metadata !54, i32 6} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 84, i32 7, metadata !136, null}
!189 = metadata !{i32 85, i32 3, metadata !190, null}
!190 = metadata !{i32 786443, metadata !136, i32 84, i32 29, metadata !54, i32 7} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 145, i32 31, metadata !192, metadata !194}
!192 = metadata !{i32 786443, metadata !193, i32 144, i32 79, metadata !60, i32 10} ; [ DW_TAG_lexical_block ]
!193 = metadata !{i32 786478, i32 0, metadata !59, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !60, i32 144, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !106, metadata !68, i32 144} ; [ DW_TAG_subprogram ]
!194 = metadata !{i32 106, i32 9, metadata !195, metadata !197}
!195 = metadata !{i32 786443, metadata !196, i32 105, i32 88, metadata !60, i32 9} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 786478, i32 0, metadata !59, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !60, i32 105, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !88, metadata !68, i32 105} ; [ DW_TAG_subprogram ]
!197 = metadata !{i32 95, i32 2, metadata !136, null}
!198 = metadata !{i32 93, i32 2, metadata !136, null}
!199 = metadata !{i32 790531, metadata !200, metadata !"stream<float>.V", null, i32 105, metadata !162, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!200 = metadata !{i32 786689, metadata !196, metadata !"this", metadata !60, i32 16777321, metadata !161, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!201 = metadata !{i32 105, i32 48, metadata !196, metadata !197}
!202 = metadata !{i32 790531, metadata !203, metadata !"stream<float>.V", null, i32 144, metadata !162, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!203 = metadata !{i32 786689, metadata !193, metadata !"this", metadata !60, i32 16777360, metadata !161, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!204 = metadata !{i32 144, i32 48, metadata !193, metadata !194}
!205 = metadata !{i32 786688, metadata !192, metadata !"tmp", metadata !60, i32 145, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!206 = metadata !{i32 146, i32 9, metadata !192, metadata !194}
!207 = metadata !{i32 67, i32 3, metadata !179, null}
!208 = metadata !{i32 48, i32 3, metadata !154, null}
!209 = metadata !{i32 61, i32 3, metadata !151, null}
!210 = metadata !{i32 96, i32 1, metadata !136, null}
