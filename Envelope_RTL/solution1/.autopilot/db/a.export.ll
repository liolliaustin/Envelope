; ModuleID = '/root/repo/new/ECE1373_GhostSynth/modules/Envelope/Envelope_RTL/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wait_r = internal unnamed_addr global i1 false
@time_r = internal unnamed_addr global i32 0, align 4
@sustainTime = internal unnamed_addr global i32 0, align 4
@releaseTime = internal unnamed_addr global i32 0, align 4
@lastpress = internal unnamed_addr global i32 0, align 4
@envelope_str = internal unnamed_addr constant [9 x i8] c"envelope\00"
@p_str5 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1
@p_str4 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @envelope(float* %wave_in_V, float* %wave_out_V, i32 %press, i32 %attackDuration, i32 %decayDuration, float %sustainAmplitude, i32 %releaseDuration) {
._crit_edge_ifconv:
  call void (...)* @_ssdm_op_SpecBitsMap(float* %wave_in_V), !map !20
  call void (...)* @_ssdm_op_SpecBitsMap(float* %wave_out_V), !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %press), !map !30
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %attackDuration), !map !36
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %decayDuration), !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(float %sustainAmplitude), !map !44
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %releaseDuration), !map !48
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @envelope_str) nounwind
  %releaseDuration_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %releaseDuration)
  %sustainAmplitude_rea = call float @_ssdm_op_Read.s_axilite.float(float %sustainAmplitude)
  %decayDuration_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %decayDuration)
  %attackDuration_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %attackDuration)
  %press_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %press)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %wave_in_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %wave_out_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %press, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %attackDuration, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %decayDuration, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float %sustainAmplitude, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %releaseDuration, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  %tmp_1 = sitofp i32 %attackDuration_read to float
  %attackSlope = fdiv float 1.000000e+00, %tmp_1
  %tmp_2 = fadd float %sustainAmplitude_rea, -1.000000e+00
  %tmp_3 = sub nsw i32 %decayDuration_read, %attackDuration_read
  %tmp_4 = sitofp i32 %tmp_3 to float
  %decaySlope = fdiv float %tmp_2, %tmp_4
  %tmp_5_to_int = bitcast float %sustainAmplitude_rea to i32
  %tmp_5_neg = xor i32 %tmp_5_to_int, -2147483648
  %tmp_5 = bitcast i32 %tmp_5_neg to float
  %tmp_6 = sub nsw i32 %releaseDuration_read, %decayDuration_read
  %tmp_7 = sitofp i32 %tmp_6 to float
  %releaseSlope = fdiv float %tmp_5, %tmp_7
  %tmp_8 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_5_to_int, i32 23, i32 30)
  %tmp = trunc i32 %tmp_5_to_int to i23
  %notlhs = icmp ne i8 %tmp_8, -1
  %notrhs = icmp eq i23 %tmp, 0
  %tmp_28 = or i1 %notrhs, %notlhs
  %tmp_30 = fcmp ogt float %sustainAmplitude_rea, 1.000000e+00
  %tmp_31 = and i1 %tmp_28, %tmp_30
  %sustainAmplitude_ass = select i1 %tmp_31, float 1.000000e+00, float %sustainAmplitude_rea
  %lastpress_load = load i32* @lastpress, align 4
  %tmp_9 = icmp ne i32 %lastpress_load, 0
  %tmp_s = icmp eq i32 %press_read, 0
  %or_cond_4 = or i1 %tmp_9, %tmp_s
  %releaseTime_load = load i32* @releaseTime, align 4
  %sustainTime_load = load i32* @sustainTime, align 4
  %tmp_10 = add nsw i32 1, %decayDuration_read
  %releaseTime_load_rel = select i1 %or_cond_4, i32 %releaseTime_load, i32 %releaseDuration_read
  %sustainTime_load_tmp = select i1 %or_cond_4, i32 %sustainTime_load, i32 %tmp_10
  store i32 %press_read, i32* @lastpress, align 4
  %tmp_38 = call float @_ssdm_op_Read.axis.volatile.floatP(float* %wave_in_V)
  %wait_load = load i1* @wait_r, align 1
  %tmp_11 = add nsw i32 1, %sustainTime_load_tmp
  %tmp_12 = add nsw i32 1, %releaseTime_load_rel
  %releaseTime_new_1 = select i1 %tmp_s, i32 %releaseDuration_read, i32 %tmp_12
  %releaseTime_loc_1 = select i1 %tmp_s, i32 %releaseTime_load, i32 %tmp_12
  %sustainTime_new_1 = select i1 %tmp_s, i32 %sustainTime_load, i32 %tmp_11
  %not_tmp_s = xor i1 %tmp_s, true
  %tmp_32 = xor i1 %wait_load, true
  %tmp_13 = or i1 %tmp_32, %not_tmp_s
  %time_load = load i32* @time_r, align 4
  %tmp_33 = trunc i32 %press_read to i1
  %tmp_34 = or i1 %tmp_33, %wait_load
  %tmp_35 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %press_read, i32 1, i32 31)
  %tmp_36 = call i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31 %tmp_35, i1 %tmp_34)
  %releaseTime_flag_1_s = icmp eq i32 %tmp_36, 0
  %releaseTime_new_1_re = select i1 %tmp_13, i32 %releaseTime_new_1, i32 %releaseDuration_read
  %releaseTime_loc_1_re = select i1 %tmp_13, i32 %releaseTime_loc_1, i32 %releaseDuration_read
  %sustainTime_new_1_tm = select i1 %tmp_13, i32 %sustainTime_new_1, i32 %tmp_10
  %time_load_s = select i1 %tmp_13, i32 %time_load, i32 0
  %tmp_14 = icmp slt i32 %time_load_s, %attackDuration_read
  br i1 %releaseTime_flag_1_s, label %._crit_edge8.new_ifconv, label %mergeST1

._crit_edge8.new_ifconv:                          ; preds = %mergeST1, %._crit_edge_ifconv
  %tmp_15 = sitofp i32 %time_load_s to float
  %tmp_16 = fmul float %attackSlope, %tmp_15
  %resultAmplitude_1 = fmul float %tmp_38, %tmp_16
  %tmp_17 = icmp slt i32 %time_load_s, %decayDuration_read
  %tmp_18 = sub nsw i32 %time_load_s, %attackDuration_read
  %tmp_19 = sitofp i32 %tmp_18 to float
  %tmp_20 = fmul float %decaySlope, %tmp_19
  %tmp_21 = fadd float %tmp_20, 1.000000e+00
  %resultAmplitude_2 = fmul float %tmp_38, %tmp_21
  %tmp_22 = icmp slt i32 %time_load_s, %sustainTime_new_1_tm
  %resultAmplitude_3 = fmul float %tmp_38, %sustainAmplitude_ass
  %tmp_23 = icmp slt i32 %time_load_s, %releaseTime_loc_1_re
  %tmp_24 = sub nsw i32 %time_load_s, %sustainTime_new_1_tm
  %tmp_25 = sitofp i32 %tmp_24 to float
  %tmp_26 = fmul float %releaseSlope, %tmp_25
  %tmp_27 = fadd float %tmp_26, %sustainAmplitude_ass
  %resultAmplitude_4 = fmul float %tmp_38, %tmp_27
  %not_tmp_1 = xor i1 %tmp_14, true
  %sel_tmp2 = and i1 %tmp_17, %not_tmp_1
  %sel_tmp = xor i1 %sel_tmp2, %not_tmp_1
  %sel_tmp6_demorgan = or i1 %tmp_14, %tmp_17
  %tmp_22_not = xor i1 %tmp_22, true
  %not_sel_tmp7 = or i1 %sel_tmp6_demorgan, %tmp_22_not
  %sel_tmp13_demorgan = or i1 %sel_tmp6_demorgan, %tmp_22
  %tmp_23_not = xor i1 %tmp_23, true
  %not_sel_tmp = or i1 %sel_tmp13_demorgan, %tmp_23_not
  %tmp1 = and i1 %not_sel_tmp7, %not_sel_tmp
  %sel_tmp8 = and i1 %tmp1, %sel_tmp
  %wait_flag_1 = or i1 %sel_tmp8, %not_tmp_s
  %sel_tmp1 = xor i1 %sel_tmp6_demorgan, true
  %sel_tmp3 = and i1 %tmp_22, %sel_tmp1
  %sel_tmp4 = xor i1 %sel_tmp13_demorgan, true
  %sel_tmp5 = and i1 %tmp_23, %sel_tmp4
  %or_cond = or i1 %sel_tmp5, %sel_tmp3
  %or_cond1 = or i1 %sel_tmp2, %tmp_14
  %or_cond2 = or i1 %or_cond, %or_cond1
  %not_or_cond = xor i1 %or_cond2, true
  %resultAmplitude_5 = select i1 %tmp_14, float %resultAmplitude_1, float 0.000000e+00
  %resultAmplitude_6 = select i1 %sel_tmp2, float %resultAmplitude_2, float %resultAmplitude_5
  %resultAmplitude_7 = select i1 %sel_tmp3, float %resultAmplitude_3, float %resultAmplitude_6
  %resultAmplitude = select i1 %sel_tmp5, float %resultAmplitude_4, float %resultAmplitude_7
  %tmp_29 = add nsw i32 %time_load_s, 1
  call void @_ssdm_op_Write.axis.volatile.floatP(float* %wave_out_V, float %resultAmplitude)
  store i32 %tmp_29, i32* @time_r, align 4
  br i1 %wait_flag_1, label %mergeST3, label %.new

mergeST1:                                         ; preds = %._crit_edge_ifconv
  store i32 %sustainTime_new_1_tm, i32* @sustainTime, align 4
  store i32 %releaseTime_new_1_re, i32* @releaseTime, align 4
  br label %._crit_edge8.new_ifconv

mergeST3:                                         ; preds = %._crit_edge8.new_ifconv
  store i1 %not_or_cond, i1* @wait_r, align 1
  br label %.new

.new:                                             ; preds = %mergeST3, %._crit_edge8.new_ifconv
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.floatP(float*, float) {
entry:
  store float %1, float* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak float @_ssdm_op_Read.s_axilite.float(float) {
entry:
  ret float %0
}

define weak float @_ssdm_op_Read.axis.volatile.floatP(float*) {
entry:
  %empty = load float* %0
  ret float %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_5 = trunc i32 %empty to i8
  ret i8 %empty_5
}

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_6 = trunc i32 %empty to i31
  ret i31 %empty_6
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone {
entry:
  %empty = zext i31 %0 to i32
  %empty_7 = zext i1 %1 to i32
  %empty_8 = shl i32 %empty, 1
  %empty_9 = or i32 %empty_8, %empty_7
  ret i32 %empty_9
}

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
