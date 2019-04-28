; ModuleID = '/home/austin/ECE1373_GhostSynth/modules/Envelope/Envelope_RTL/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wait_r = internal unnamed_addr global i1 false
@time_r = internal unnamed_addr global i32 0, align 4
@sustainTime = internal unnamed_addr global i32 0, align 4
@releaseTime = internal unnamed_addr global i32 0, align 4
@releaseSlope = internal unnamed_addr global float 0.000000e+00, align 4
@guard_variable_for_e_4 = internal unnamed_addr global i1 false
@guard_variable_for_e_3 = internal unnamed_addr global i1 false
@guard_variable_for_e_2 = internal unnamed_addr global i1 false
@guard_variable_for_e_1 = internal unnamed_addr global i1 false
@guard_variable_for_e = internal unnamed_addr global i1 false
@envelope_str = internal unnamed_addr constant [9 x i8] c"envelope\00"
@decaySlope = internal unnamed_addr global float 0.000000e+00, align 4
@attackSlope = internal unnamed_addr global float 0.000000e+00, align 4
@p_str5 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1
@p_str4 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

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
  %releaseDuration_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %releaseDuration)
  %sustainDuration_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %sustainDuration)
  %sustainAmplitude_rea = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %sustainAmplitude)
  %decayDuration_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %decayDuration)
  %attackDuration_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %attackDuration)
  %press_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %press)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %wave_in_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %wave_out_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %press, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %attackDuration, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %decayDuration, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %sustainAmplitude, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %sustainDuration, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %releaseDuration, [10 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  %guard_variable_for_e = load i1* @guard_variable_for_e_4, align 1
  br i1 %guard_variable_for_e, label %._crit_edge, label %codeRepl1

codeRepl1:                                        ; preds = %0
  %tmp_1_i = sitofp i32 %attackDuration_read to float
  %tmp_2_i = fdiv float 2.000000e+00, %tmp_1_i
  store float %tmp_2_i, float* @attackSlope, align 4
  store i1 true, i1* @guard_variable_for_e_4, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %codeRepl1, %0
  %guard_variable_for_e_1 = load i1* @guard_variable_for_e_3, align 1
  br i1 %guard_variable_for_e_1, label %._crit_edge5, label %codeRepl

codeRepl:                                         ; preds = %._crit_edge
  %tmp_4_i = add nsw i32 %sustainAmplitude_rea, -2
  %tmp_5_i = sitofp i32 %tmp_4_i to float
  %tmp_6_i = sub nsw i32 %decayDuration_read, %attackDuration_read
  %tmp_7_i = sitofp i32 %tmp_6_i to float
  %tmp_8_i = fdiv float %tmp_5_i, %tmp_7_i
  store float %tmp_8_i, float* @decaySlope, align 4
  store i1 true, i1* @guard_variable_for_e_3, align 1
  br label %._crit_edge5

._crit_edge5:                                     ; preds = %codeRepl, %._crit_edge
  %guard_variable_for_e_2 = load i1* @guard_variable_for_e_2, align 1
  br i1 %guard_variable_for_e_2, label %._crit_edge6, label %codeRepl2

codeRepl2:                                        ; preds = %._crit_edge5
  %tmp_i = sub nsw i32 0, %sustainAmplitude_rea
  %tmp_10_i = sitofp i32 %tmp_i to float
  %tmp_11_i = sub nsw i32 %releaseDuration_read, %sustainDuration_read
  %tmp_12_i = sitofp i32 %tmp_11_i to float
  %tmp_13_i = fdiv float %tmp_10_i, %tmp_12_i
  store float %tmp_13_i, float* @releaseSlope, align 4
  store i1 true, i1* @guard_variable_for_e_2, align 1
  br label %._crit_edge6

._crit_edge6:                                     ; preds = %codeRepl2, %._crit_edge5
  %guard_variable_for_e_3 = load i1* @guard_variable_for_e_1, align 1
  %releaseTime_load = load i32* @releaseTime, align 4
  br i1 %guard_variable_for_e_3, label %._crit_edge7, label %codeRepl3

codeRepl3:                                        ; preds = %._crit_edge6
  store i1 true, i1* @guard_variable_for_e_1, align 1
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %codeRepl3, %._crit_edge6
  %releaseTime_flag = phi i1 [ true, %codeRepl3 ], [ false, %._crit_edge6 ]
  %releaseTime_loc = phi i32 [ %releaseDuration_read, %codeRepl3 ], [ %releaseTime_load, %._crit_edge6 ]
  %guard_variable_for_e_4 = load i1* @guard_variable_for_e, align 1
  %sustainTime_load = load i32* @sustainTime, align 4
  br i1 %guard_variable_for_e_4, label %._crit_edge8_ifconv, label %codeRepl4

codeRepl4:                                        ; preds = %._crit_edge7
  store i1 true, i1* @guard_variable_for_e, align 1
  br label %._crit_edge8_ifconv

._crit_edge8_ifconv:                              ; preds = %codeRepl4, %._crit_edge7
  %sustainTime_flag = phi i1 [ true, %codeRepl4 ], [ false, %._crit_edge7 ]
  %sustainTime_loc = phi i32 [ %sustainDuration_read, %codeRepl4 ], [ %sustainTime_load, %._crit_edge7 ]
  %tmp_25 = call float @_ssdm_op_Read.axis.volatile.floatP(float* %wave_in_V)
  %tmp_4 = icmp eq i32 %press_read, 0
  %wait_load = load i1* @wait_r, align 1
  %time_load = load i32* @time_r, align 4
  %tmp_5 = icmp slt i32 %time_load, %sustainTime_loc
  %sustainTime_loc_time = select i1 %tmp_5, i32 %sustainTime_loc, i32 %time_load
  %not_tmp_4 = xor i1 %tmp_4, true
  %time_loc_1 = select i1 %tmp_4, i32 %sustainTime_loc_time, i32 %time_load
  %tmp_6 = icmp sgt i32 %press_read, 0
  %tmp_7 = add nsw i32 %sustainTime_loc, -1
  %tmp_8 = icmp eq i32 %time_loc_1, %tmp_7
  %tmp_s = add nsw i32 %sustainTime_loc, 1
  %tmp_1 = add nsw i32 %releaseTime_loc, 1
  %sel_tmp1 = and i1 %tmp_6, %tmp_8
  %releaseTime_flag_1 = or i1 %releaseTime_flag, %sel_tmp1
  %sel_tmp5 = select i1 %sel_tmp1, i32 %tmp_1, i32 %releaseDuration_read
  %releaseTime_new_1 = select i1 %tmp_6, i32 %sel_tmp5, i32 %releaseDuration_read
  %sel_tmp9 = select i1 %sel_tmp1, i32 %tmp_1, i32 %releaseTime_loc
  %releaseTime_loc_1 = select i1 %tmp_6, i32 %sel_tmp9, i32 %releaseTime_loc
  %sustainTime_flag_1 = or i1 %sustainTime_flag, %sel_tmp1
  %sel_tmp = select i1 %sel_tmp1, i32 %tmp_s, i32 %sustainDuration_read
  %sustainTime_new_1 = select i1 %tmp_6, i32 %sel_tmp, i32 %sustainDuration_read
  %sel_tmp2 = select i1 %sel_tmp1, i32 %tmp_s, i32 %sustainTime_loc
  %sustainTime_loc_1 = select i1 %tmp_6, i32 %sel_tmp2, i32 %sustainTime_loc
  %tmp_2 = xor i1 %wait_load, true
  %tmp_3 = or i1 %tmp_2, %not_tmp_4
  br i1 %sustainTime_flag_1, label %mergeST5, label %._crit_edge10.new6

mergeST:                                          ; preds = %._crit_edge10.new6
  store i32 %releaseTime_new_1, i32* @releaseTime, align 4
  br label %._crit_edge10.new_ifconv

._crit_edge10.new_ifconv:                         ; preds = %._crit_edge10.new6, %mergeST
  %time_loc_2 = select i1 %tmp_3, i32 %time_loc_1, i32 0
  %tmp_9 = icmp slt i32 %time_loc_2, %attackDuration_read
  %attackSlope_load = load float* @attackSlope, align 4
  %tmp_10 = sitofp i32 %time_loc_2 to float
  %tmp_11 = fmul float %attackSlope_load, %tmp_10
  %resultAmplitude_1 = fmul float %tmp_25, %tmp_11
  %tmp_12 = icmp slt i32 %time_loc_2, %decayDuration_read
  %decaySlope_load = load float* @decaySlope, align 4
  %tmp_13 = sub nsw i32 %time_loc_2, %attackDuration_read
  %tmp_14 = sitofp i32 %tmp_13 to float
  %tmp_15 = fmul float %decaySlope_load, %tmp_14
  %tmp_16 = fadd float %tmp_15, 2.000000e+00
  %resultAmplitude_2 = fmul float %tmp_25, %tmp_16
  %tmp_17 = icmp slt i32 %time_loc_2, %sustainTime_loc_1
  %tmp_18 = sitofp i32 %sustainAmplitude_rea to float
  %resultAmplitude_3 = fmul float %tmp_25, %tmp_18
  %tmp_19 = icmp slt i32 %time_loc_2, %releaseTime_loc_1
  %releaseSlope_load = load float* @releaseSlope, align 4
  %tmp_20 = sub nsw i32 %time_loc_2, %sustainTime_loc_1
  %tmp_21 = sitofp i32 %tmp_20 to float
  %tmp_22 = fmul float %releaseSlope_load, %tmp_21
  %tmp_23 = fadd float %tmp_22, %tmp_18
  %resultAmplitude_4 = fmul float %tmp_25, %tmp_23
  %not_tmp_s = xor i1 %tmp_9, true
  %sel_tmp3 = and i1 %tmp_12, %not_tmp_s
  %sel_tmp4 = xor i1 %sel_tmp3, %not_tmp_s
  %sel_tmp30_demorgan = or i1 %tmp_9, %tmp_12
  %tmp_21_not = xor i1 %tmp_17, true
  %not_sel_tmp = or i1 %sel_tmp30_demorgan, %tmp_21_not
  %sel_tmp37_demorgan = or i1 %sel_tmp30_demorgan, %tmp_17
  %tmp_23_not = xor i1 %tmp_19, true
  %not_sel_tmp1 = or i1 %sel_tmp37_demorgan, %tmp_23_not
  %tmp1 = and i1 %not_sel_tmp, %not_sel_tmp1
  %sel_tmp6 = and i1 %tmp1, %sel_tmp4
  %wait_flag_1 = or i1 %sel_tmp6, %not_tmp_4
  %sel_tmp7 = xor i1 %sel_tmp30_demorgan, true
  %sel_tmp8 = and i1 %tmp_17, %sel_tmp7
  %sel_tmp10 = xor i1 %sel_tmp37_demorgan, true
  %sel_tmp11 = and i1 %tmp_19, %sel_tmp10
  %or_cond = or i1 %sel_tmp11, %sel_tmp8
  %or_cond1 = or i1 %sel_tmp3, %tmp_9
  %or_cond2 = or i1 %or_cond, %or_cond1
  %not_or_cond = xor i1 %or_cond2, true
  %resultAmplitude_5 = select i1 %tmp_9, float %resultAmplitude_1, float 0.000000e+00
  %resultAmplitude_6 = select i1 %sel_tmp3, float %resultAmplitude_2, float %resultAmplitude_5
  %resultAmplitude_7 = select i1 %sel_tmp8, float %resultAmplitude_3, float %resultAmplitude_6
  %resultAmplitude = select i1 %sel_tmp11, float %resultAmplitude_4, float %resultAmplitude_7
  %tmp_24 = add nsw i32 %time_loc_2, 1
  call void @_ssdm_op_Write.axis.volatile.floatP(float* %wave_out_V, float %resultAmplitude)
  store i32 %tmp_24, i32* @time_r, align 4
  br i1 %wait_flag_1, label %mergeST7, label %.new

mergeST5:                                         ; preds = %._crit_edge8_ifconv
  store i32 %sustainTime_new_1, i32* @sustainTime, align 4
  br label %._crit_edge10.new6

._crit_edge10.new6:                               ; preds = %mergeST5, %._crit_edge8_ifconv
  br i1 %releaseTime_flag_1, label %mergeST, label %._crit_edge10.new_ifconv

mergeST7:                                         ; preds = %._crit_edge10.new_ifconv
  store i1 %not_or_cond, i1* @wait_r, align 1
  br label %.new

.new:                                             ; preds = %mergeST7, %._crit_edge10.new_ifconv
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

define weak float @_ssdm_op_Read.axis.volatile.floatP(float*) {
entry:
  %empty = load float* %0
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
