; ModuleID = '/root/repo/new/ECE1373_GhostSynth/modules/Envelope/Envelope_RTL/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wait = internal unnamed_addr global i1 false     ; [#uses=2 type=i1*]
@time = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@sustainTime = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@releaseTime = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@lastpress = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@envelope.str = internal unnamed_addr constant [9 x i8] c"envelope\00" ; [#uses=1 type=[9 x i8]*]
@.str5 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=5 type=[9 x i8]*]
@.str4 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=5 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=2 type=[5 x i8]*]
@.str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=2 type=[5 x i8]*]
@.str1 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=41 type=[1 x i8]*]

; [#uses=28]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @envelope(float* %wave_in.V, float* %wave_out.V, i32 %press, i32 %attackDuration, i32 %decayDuration, float %sustainAmplitude, i32 %releaseDuration) {
._crit_edge_ifconv:
  call void (...)* @_ssdm_op_SpecBitsMap(float* %wave_in.V), !map !102
  call void (...)* @_ssdm_op_SpecBitsMap(float* %wave_out.V), !map !108
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %press), !map !112
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %attackDuration), !map !118
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %decayDuration), !map !122
  call void (...)* @_ssdm_op_SpecBitsMap(float %sustainAmplitude), !map !126
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %releaseDuration), !map !130
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @envelope.str) nounwind
  %tmp.30 = alloca float, align 4                 ; [#uses=2 type=float*]
  %tmp = alloca float, align 4                    ; [#uses=2 type=float*]
  call void @llvm.dbg.value(metadata !{float* %wave_in.V}, i64 0, metadata !134), !dbg !139 ; [debug line = 9:23] [debug variable = wave_in.V]
  call void @llvm.dbg.value(metadata !{float* %wave_out.V}, i64 0, metadata !140), !dbg !142 ; [debug line = 10:23] [debug variable = wave_out.V]
  call void @llvm.dbg.value(metadata !{i32 %press}, i64 0, metadata !143), !dbg !144 ; [debug line = 12:6] [debug variable = press]
  call void @llvm.dbg.value(metadata !{i32 %attackDuration}, i64 0, metadata !145), !dbg !146 ; [debug line = 13:6] [debug variable = attackDuration]
  call void @llvm.dbg.value(metadata !{i32 %decayDuration}, i64 0, metadata !147), !dbg !148 ; [debug line = 14:6] [debug variable = decayDuration]
  call void @llvm.dbg.value(metadata !{float %sustainAmplitude}, i64 0, metadata !149), !dbg !150 ; [debug line = 15:8] [debug variable = sustainAmplitude]
  call void @llvm.dbg.value(metadata !{i32 %releaseDuration}, i64 0, metadata !151), !dbg !152 ; [debug line = 16:6] [debug variable = releaseDuration]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !153 ; [debug line = 21:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %wave_in.V, [5 x i8]* @.str2, i32 1, i32 1, [5 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !155 ; [debug line = 23:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %wave_out.V, [5 x i8]* @.str2, i32 1, i32 1, [5 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !156 ; [debug line = 24:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %press, [10 x i8]* @.str4, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str5, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !157 ; [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %attackDuration, [10 x i8]* @.str4, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str5, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !158 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %decayDuration, [10 x i8]* @.str4, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str5, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !159 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(float %sustainAmplitude, [10 x i8]* @.str4, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str5, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !160 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %releaseDuration, [10 x i8]* @.str4, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str5, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !161 ; [debug line = 30:1]
  %tmp.1 = sitofp i32 %attackDuration to float, !dbg !162 ; [#uses=1 type=float] [debug line = 34:45]
  %attackSlope = fdiv float 1.000000e+00, %tmp.1, !dbg !162 ; [#uses=1 type=float] [debug line = 34:45]
  call void @llvm.dbg.value(metadata !{float %attackSlope}, i64 0, metadata !163), !dbg !162 ; [debug line = 34:45] [debug variable = attackSlope]
  %tmp.2 = fadd float %sustainAmplitude, -1.000000e+00, !dbg !164 ; [#uses=1 type=float] [debug line = 35:83]
  %tmp.3 = sub nsw i32 %decayDuration, %attackDuration, !dbg !164 ; [#uses=1 type=i32] [debug line = 35:83]
  %tmp.4 = sitofp i32 %tmp.3 to float, !dbg !164  ; [#uses=1 type=float] [debug line = 35:83]
  %decaySlope = fdiv float %tmp.2, %tmp.4, !dbg !164 ; [#uses=1 type=float] [debug line = 35:83]
  call void @llvm.dbg.value(metadata !{float %decaySlope}, i64 0, metadata !165), !dbg !164 ; [debug line = 35:83] [debug variable = decaySlope]
  %tmp.5_to_int = bitcast float %sustainAmplitude to i32, !dbg !166 ; [#uses=1 type=i32] [debug line = 36:82]
  %tmp.5_neg = xor i32 %tmp.5_to_int, -2147483648, !dbg !166 ; [#uses=1 type=i32] [debug line = 36:82]
  %tmp.5 = bitcast i32 %tmp.5_neg to float, !dbg !166 ; [#uses=1 type=float] [debug line = 36:82]
  %tmp.6 = sub nsw i32 %releaseDuration, %decayDuration, !dbg !166 ; [#uses=1 type=i32] [debug line = 36:82]
  %tmp.7 = sitofp i32 %tmp.6 to float, !dbg !166  ; [#uses=1 type=float] [debug line = 36:82]
  %releaseSlope = fdiv float %tmp.5, %tmp.7, !dbg !166 ; [#uses=1 type=float] [debug line = 36:82]
  call void @llvm.dbg.value(metadata !{float %releaseSlope}, i64 0, metadata !167), !dbg !166 ; [debug line = 36:82] [debug variable = releaseSlope]
  %sustainAmplitude_to_int = bitcast float %sustainAmplitude to i32 ; [#uses=2 type=i32]
  %tmp.8 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sustainAmplitude_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.31 = trunc i32 %sustainAmplitude_to_int to i23 ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp.8, -1                 ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp.31, 0                ; [#uses=1 type=i1]
  %tmp.32 = or i1 %notrhs, %notlhs                ; [#uses=1 type=i1]
  %tmp.33 = fcmp ogt float %sustainAmplitude, 1.000000e+00, !dbg !168 ; [#uses=1 type=i1] [debug line = 40:2]
  %tmp.34 = and i1 %tmp.32, %tmp.33, !dbg !168    ; [#uses=1 type=i1] [debug line = 40:2]
  %sustainAmplitude.assign = select i1 %tmp.34, float 1.000000e+00, float %sustainAmplitude, !dbg !168 ; [#uses=2 type=float] [debug line = 40:2]
  call void @llvm.dbg.value(metadata !{float %sustainAmplitude.assign}, i64 0, metadata !149), !dbg !168 ; [debug line = 40:2] [debug variable = sustainAmplitude]
  %lastpress.load = load i32* @lastpress, align 4, !dbg !169 ; [#uses=1 type=i32] [debug line = 47:2]
  %tmp.9 = icmp ne i32 %lastpress.load, 0, !dbg !169 ; [#uses=1 type=i1] [debug line = 47:2]
  %tmp. = icmp eq i32 %press, 0, !dbg !169        ; [#uses=5 type=i1] [debug line = 47:2]
  %or.cond = or i1 %tmp.9, %tmp., !dbg !169       ; [#uses=2 type=i1] [debug line = 47:2]
  %releaseTime.load = load i32* @releaseTime, align 4, !dbg !170 ; [#uses=2 type=i32] [debug line = 62:3]
  %sustainTime.load = load i32* @sustainTime, align 4, !dbg !172 ; [#uses=2 type=i32] [debug line = 61:3]
  %tmp.10 = add nsw i32 %decayDuration, 1, !dbg !173 ; [#uses=2 type=i32] [debug line = 49:3]
  %releaseTime.load.releaseDuration = select i1 %or.cond, i32 %releaseTime.load, i32 %releaseDuration, !dbg !169 ; [#uses=1 type=i32] [debug line = 47:2]
  %sustainTime.load.tmp. = select i1 %or.cond, i32 %sustainTime.load, i32 %tmp.10, !dbg !169 ; [#uses=1 type=i32] [debug line = 47:2]
  store i32 %press, i32* @lastpress, align 4, !dbg !175 ; [debug line = 52:2]
  call void @llvm.dbg.value(metadata !{float* %wave_in.V}, i64 0, metadata !176), !dbg !181 ; [debug line = 101:48@57:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %wave_in.V}, i64 0, metadata !183), !dbg !186 ; [debug line = 123:48@102:9@57:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp}, metadata !189) nounwind, !dbg !191 ; [debug line = 124:22@102:9@57:2] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.floatP.floatP(float* %wave_in.V, float* %tmp) nounwind, !dbg !192 ; [debug line = 125:9@102:9@57:2]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !189), !dbg !193 ; [debug line = 126:9@102:9@57:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !189), !dbg !193 ; [debug line = 126:9@102:9@57:2] [debug variable = tmp]
  %resultAmplitude = load float* %tmp, align 4, !dbg !193 ; [#uses=4 type=float] [debug line = 126:9@102:9@57:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude}, i64 0, metadata !194), !dbg !193 ; [debug line = 126:9@102:9@57:2] [debug variable = resultAmplitude]
  %wait.load = load i1* @wait, align 1            ; [#uses=2 type=i1]
  %tmp.11 = add nsw i32 %sustainTime.load.tmp., 1, !dbg !172 ; [#uses=1 type=i32] [debug line = 61:3]
  %tmp.12 = add nsw i32 %releaseTime.load.releaseDuration, 1, !dbg !170 ; [#uses=2 type=i32] [debug line = 62:3]
  %releaseTime.new.1 = select i1 %tmp., i32 %releaseDuration, i32 %tmp.12 ; [#uses=1 type=i32]
  %releaseTime.loc.1 = select i1 %tmp., i32 %releaseTime.load, i32 %tmp.12 ; [#uses=1 type=i32]
  %sustainTime.new.1 = select i1 %tmp., i32 %sustainTime.load, i32 %tmp.11 ; [#uses=1 type=i32]
  %not.tmp. = xor i1 %tmp., true                  ; [#uses=2 type=i1]
  %tmp.35 = xor i1 %wait.load, true, !dbg !195    ; [#uses=1 type=i1] [debug line = 65:2]
  %tmp.13 = or i1 %tmp.35, %not.tmp., !dbg !195   ; [#uses=4 type=i1] [debug line = 65:2]
  %time.load = load i32* @time, align 4, !dbg !196 ; [#uses=1 type=i32] [debug line = 71:2]
  %tmp.36 = trunc i32 %press to i1                ; [#uses=1 type=i1]
  %tmp.37 = or i1 %tmp.36, %wait.load             ; [#uses=1 type=i1]
  %tmp.38 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %press, i32 1, i32 31) ; [#uses=1 type=i31]
  %tmp.39 = call i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31 %tmp.38, i1 %tmp.37), !dbg !195 ; [#uses=1 type=i32] [debug line = 65:2]
  %releaseTime.flag.1. = icmp eq i32 %tmp.39, 0, !dbg !195 ; [#uses=1 type=i1] [debug line = 65:2]
  %releaseTime.new.1.releaseDuration = select i1 %tmp.13, i32 %releaseTime.new.1, i32 %releaseDuration, !dbg !195 ; [#uses=1 type=i32] [debug line = 65:2]
  %releaseTime.loc.1.releaseDuration = select i1 %tmp.13, i32 %releaseTime.loc.1, i32 %releaseDuration, !dbg !195 ; [#uses=1 type=i32] [debug line = 65:2]
  %sustainTime.new.1.tmp. = select i1 %tmp.13, i32 %sustainTime.new.1, i32 %tmp.10, !dbg !195 ; [#uses=3 type=i32] [debug line = 65:2]
  %time.load. = select i1 %tmp.13, i32 %time.load, i32 0, !dbg !195 ; [#uses=8 type=i32] [debug line = 65:2]
  %tmp.14 = icmp slt i32 %time.load., %attackDuration, !dbg !196 ; [#uses=4 type=i1] [debug line = 71:2]
  br i1 %releaseTime.flag.1., label %._crit_edge8.new_ifconv, label %mergeST1

._crit_edge8.new_ifconv:                          ; preds = %mergeST1, %._crit_edge_ifconv
  %tmp.15 = sitofp i32 %time.load. to float, !dbg !197 ; [#uses=1 type=float] [debug line = 72:3]
  %tmp.16 = fmul float %attackSlope, %tmp.15, !dbg !197 ; [#uses=1 type=float] [debug line = 72:3]
  %resultAmplitude.1 = fmul float %resultAmplitude, %tmp.16, !dbg !197 ; [#uses=1 type=float] [debug line = 72:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.1}, i64 0, metadata !194), !dbg !197 ; [debug line = 72:3] [debug variable = resultAmplitude]
  %tmp.17 = icmp slt i32 %time.load., %decayDuration, !dbg !199 ; [#uses=2 type=i1] [debug line = 75:7]
  %tmp.18 = sub nsw i32 %time.load., %attackDuration, !dbg !200 ; [#uses=1 type=i32] [debug line = 76:3]
  %tmp.19 = sitofp i32 %tmp.18 to float, !dbg !200 ; [#uses=1 type=float] [debug line = 76:3]
  %tmp.20 = fmul float %decaySlope, %tmp.19, !dbg !200 ; [#uses=1 type=float] [debug line = 76:3]
  %tmp.21 = fadd float %tmp.20, 1.000000e+00, !dbg !200 ; [#uses=1 type=float] [debug line = 76:3]
  %resultAmplitude.2 = fmul float %resultAmplitude, %tmp.21, !dbg !200 ; [#uses=1 type=float] [debug line = 76:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.2}, i64 0, metadata !194), !dbg !200 ; [debug line = 76:3] [debug variable = resultAmplitude]
  %tmp.22 = icmp slt i32 %time.load., %sustainTime.new.1.tmp., !dbg !202 ; [#uses=3 type=i1] [debug line = 79:7]
  %resultAmplitude.3 = fmul float %resultAmplitude, %sustainAmplitude.assign, !dbg !203 ; [#uses=1 type=float] [debug line = 80:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.3}, i64 0, metadata !194), !dbg !203 ; [debug line = 80:3] [debug variable = resultAmplitude]
  %tmp.23 = icmp slt i32 %time.load., %releaseTime.loc.1.releaseDuration, !dbg !205 ; [#uses=2 type=i1] [debug line = 83:7]
  %tmp.24 = sub nsw i32 %time.load., %sustainTime.new.1.tmp., !dbg !206 ; [#uses=1 type=i32] [debug line = 84:3]
  %tmp.25 = sitofp i32 %tmp.24 to float, !dbg !206 ; [#uses=1 type=float] [debug line = 84:3]
  %tmp.26 = fmul float %releaseSlope, %tmp.25, !dbg !206 ; [#uses=1 type=float] [debug line = 84:3]
  %tmp.27 = fadd float %tmp.26, %sustainAmplitude.assign, !dbg !206 ; [#uses=1 type=float] [debug line = 84:3]
  %resultAmplitude.4 = fmul float %resultAmplitude, %tmp.27, !dbg !206 ; [#uses=1 type=float] [debug line = 84:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.4}, i64 0, metadata !194), !dbg !206 ; [debug line = 84:3] [debug variable = resultAmplitude]
  %not.tmp.1 = xor i1 %tmp.14, true               ; [#uses=2 type=i1]
  %sel_tmp2 = and i1 %tmp.17, %not.tmp.1          ; [#uses=3 type=i1]
  %sel_tmp = xor i1 %sel_tmp2, %not.tmp.1         ; [#uses=1 type=i1]
  %sel_tmp6.demorgan = or i1 %tmp.14, %tmp.17     ; [#uses=3 type=i1]
  %tmp.22.not = xor i1 %tmp.22, true              ; [#uses=1 type=i1]
  %not.sel_tmp7 = or i1 %sel_tmp6.demorgan, %tmp.22.not ; [#uses=1 type=i1]
  %sel_tmp13.demorgan = or i1 %sel_tmp6.demorgan, %tmp.22 ; [#uses=2 type=i1]
  %tmp.23.not = xor i1 %tmp.23, true              ; [#uses=1 type=i1]
  %not.sel_tmp = or i1 %sel_tmp13.demorgan, %tmp.23.not ; [#uses=1 type=i1]
  %tmp40 = and i1 %not.sel_tmp7, %not.sel_tmp     ; [#uses=1 type=i1]
  %sel_tmp8 = and i1 %tmp40, %sel_tmp             ; [#uses=1 type=i1]
  %wait.flag.1 = or i1 %sel_tmp8, %not.tmp.       ; [#uses=1 type=i1]
  %sel_tmp1 = xor i1 %sel_tmp6.demorgan, true     ; [#uses=1 type=i1]
  %sel_tmp3 = and i1 %tmp.22, %sel_tmp1           ; [#uses=2 type=i1]
  %sel_tmp4 = xor i1 %sel_tmp13.demorgan, true    ; [#uses=1 type=i1]
  %sel_tmp5 = and i1 %tmp.23, %sel_tmp4           ; [#uses=2 type=i1]
  %or_cond = or i1 %sel_tmp5, %sel_tmp3           ; [#uses=1 type=i1]
  %or_cond1 = or i1 %sel_tmp2, %tmp.14            ; [#uses=1 type=i1]
  %or_cond2 = or i1 %or_cond, %or_cond1           ; [#uses=1 type=i1]
  %not.or_cond = xor i1 %or_cond2, true           ; [#uses=1 type=i1]
  %resultAmplitude.5 = select i1 %tmp.14, float %resultAmplitude.1, float 0.000000e+00, !dbg !208 ; [#uses=1 type=float] [debug line = 145:31@106:9@94:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.5}, i64 0, metadata !194), !dbg !200 ; [debug line = 76:3] [debug variable = resultAmplitude]
  %resultAmplitude.6 = select i1 %sel_tmp2, float %resultAmplitude.2, float %resultAmplitude.5, !dbg !208 ; [#uses=1 type=float] [debug line = 145:31@106:9@94:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.6}, i64 0, metadata !194), !dbg !200 ; [debug line = 76:3] [debug variable = resultAmplitude]
  %resultAmplitude.7 = select i1 %sel_tmp3, float %resultAmplitude.3, float %resultAmplitude.6, !dbg !208 ; [#uses=1 type=float] [debug line = 145:31@106:9@94:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.7}, i64 0, metadata !194), !dbg !200 ; [debug line = 76:3] [debug variable = resultAmplitude]
  %resultAmplitude.9 = select i1 %sel_tmp5, float %resultAmplitude.4, float %resultAmplitude.7, !dbg !208 ; [#uses=1 type=float] [debug line = 145:31@106:9@94:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.9}, i64 0, metadata !194), !dbg !200 ; [debug line = 76:3] [debug variable = resultAmplitude]
  %tmp.29 = add nsw i32 %time.load., 1, !dbg !215 ; [#uses=1 type=i32] [debug line = 92:2]
  call void @llvm.dbg.value(metadata !{float* %wave_out.V}, i64 0, metadata !216), !dbg !218 ; [debug line = 105:48@94:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %wave_out.V}, i64 0, metadata !219), !dbg !221 ; [debug line = 144:48@106:9@94:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp.30}, metadata !222) nounwind, !dbg !223 ; [debug line = 145:22@106:9@94:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.9}, i64 0, metadata !222), !dbg !208 ; [debug line = 145:31@106:9@94:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.9}, i64 0, metadata !222), !dbg !208 ; [debug line = 145:31@106:9@94:2] [debug variable = tmp]
  store float %resultAmplitude.9, float* %tmp.30, align 4, !dbg !208 ; [debug line = 145:31@106:9@94:2]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %wave_out.V, float* %tmp.30) nounwind, !dbg !224 ; [debug line = 146:9@106:9@94:2]
  store i32 %tmp.29, i32* @time, align 4, !dbg !225 ; [debug line = 66:3]
  br i1 %wait.flag.1, label %mergeST3, label %.new

mergeST1:                                         ; preds = %._crit_edge_ifconv
  store i32 %sustainTime.new.1.tmp., i32* @sustainTime, align 4, !dbg !173 ; [debug line = 49:3]
  store i32 %releaseTime.new.1.releaseDuration, i32* @releaseTime, align 4, !dbg !227 ; [debug line = 48:3]
  br label %._crit_edge8.new_ifconv

mergeST3:                                         ; preds = %._crit_edge8.new_ifconv
  store i1 %not.or_cond, i1* @wait, align 1, !dbg !228 ; [debug line = 60:3]
  br label %.new

.new:                                             ; preds = %mergeST3, %._crit_edge8.new_ifconv
  ret void, !dbg !229                             ; [debug line = 95:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=8]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=7]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_IfWrite.Stream.floatP.floatP(float*, float*)

; [#uses=1]
declare void @_ssdm_op_IfRead.Stream.floatP.floatP(float*, float*)

; [#uses=1]
declare i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone

!opencl.kernels = !{!0, !7, !13, !15, !18}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!20}

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
!20 = metadata !{i32 786449, i32 0, i32 4, metadata !"/root/repo/new/ECE1373_GhostSynth/modules/Envelope/Envelope_RTL/solution1/.autopilot/db/Envelope.pragma.2.cpp", metadata !"/root/repo/new/ECE1373_GhostSynth/modules/Envelope", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !21} ; [ DW_TAG_compile_unit ]
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !23, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !95, metadata !96, metadata !97, metadata !99, metadata !100}
!23 = metadata !{i32 786484, i32 0, metadata !24, metadata !"lastpress", metadata !"lastpress", metadata !"", metadata !25, i32 33, metadata !87, i32 1, i32 1, i32* @lastpress} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786478, i32 0, metadata !25, metadata !"envelope", metadata !"envelope", metadata !"_Z8envelopeRN3hls6streamIfEES2_iiifi", metadata !25, i32 7, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 18} ; [ DW_TAG_subprogram ]
!25 = metadata !{i32 786473, metadata !"src/Envelope.cpp", metadata !"/root/repo/new/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{null, metadata !28, metadata !28, metadata !87, metadata !87, metadata !87, metadata !34, metadata !87}
!28 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_reference_type ]
!29 = metadata !{i32 786434, metadata !30, metadata !"stream<float>", metadata !31, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !32, i32 0, null, metadata !85} ; [ DW_TAG_class_type ]
!30 = metadata !{i32 786489, null, metadata !"hls", metadata !31, i32 69} ; [ DW_TAG_namespace ]
!31 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot/hls_stream.h", metadata !"/root/repo/new/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!32 = metadata !{metadata !33, metadata !35, metadata !41, metadata !47, metadata !52, metadata !55, metadata !59, metadata !64, metadata !69, metadata !70, metadata !71, metadata !74, metadata !77, metadata !78, metadata !81}
!33 = metadata !{i32 786445, metadata !29, metadata !"V", metadata !31, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !34} ; [ DW_TAG_member ]
!34 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!35 = metadata !{i32 786478, i32 0, metadata !29, metadata !"stream", metadata !"stream", metadata !"", metadata !31, i32 83, metadata !36, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 83} ; [ DW_TAG_subprogram ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{null, metadata !38}
!38 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !29} ; [ DW_TAG_pointer_type ]
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!41 = metadata !{i32 786478, i32 0, metadata !29, metadata !"stream", metadata !"stream", metadata !"", metadata !31, i32 86, metadata !42, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 86} ; [ DW_TAG_subprogram ]
!42 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!43 = metadata !{null, metadata !38, metadata !44}
!44 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ]
!45 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_const_type ]
!46 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!47 = metadata !{i32 786478, i32 0, metadata !29, metadata !"stream", metadata !"stream", metadata !"", metadata !31, i32 91, metadata !48, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !39, i32 91} ; [ DW_TAG_subprogram ]
!48 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!49 = metadata !{null, metadata !38, metadata !50}
!50 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_reference_type ]
!51 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_const_type ]
!52 = metadata !{i32 786478, i32 0, metadata !29, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !31, i32 94, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !39, i32 94} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{metadata !28, metadata !38, metadata !50}
!55 = metadata !{i32 786478, i32 0, metadata !29, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !31, i32 101, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 101} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!57 = metadata !{null, metadata !38, metadata !58}
!58 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_reference_type ]
!59 = metadata !{i32 786478, i32 0, metadata !29, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !31, i32 105, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 105} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{null, metadata !38, metadata !62}
!62 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_reference_type ]
!63 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_const_type ]
!64 = metadata !{i32 786478, i32 0, metadata !29, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !31, i32 112, metadata !65, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 112} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{metadata !67, metadata !68}
!67 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!68 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !51} ; [ DW_TAG_pointer_type ]
!69 = metadata !{i32 786478, i32 0, metadata !29, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !31, i32 117, metadata !65, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 117} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786478, i32 0, metadata !29, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !31, i32 123, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 123} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786478, i32 0, metadata !29, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !31, i32 129, metadata !72, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 129} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !73, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!73 = metadata !{metadata !34, metadata !38}
!74 = metadata !{i32 786478, i32 0, metadata !29, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !31, i32 136, metadata !75, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 136} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!76 = metadata !{metadata !67, metadata !38, metadata !58}
!77 = metadata !{i32 786478, i32 0, metadata !29, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !31, i32 144, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 144} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 786478, i32 0, metadata !29, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !31, i32 150, metadata !79, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 150} ; [ DW_TAG_subprogram ]
!79 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!80 = metadata !{metadata !67, metadata !38, metadata !62}
!81 = metadata !{i32 786478, i32 0, metadata !29, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !31, i32 157, metadata !82, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 157} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!83 = metadata !{metadata !84, metadata !38}
!84 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!85 = metadata !{metadata !86}
!86 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !34, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!87 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!88 = metadata !{i32 786484, i32 0, metadata !24, metadata !"releaseTime", metadata !"releaseTime", metadata !"", metadata !25, i32 43, metadata !87, i32 1, i32 1, i32* @releaseTime} ; [ DW_TAG_variable ]
!89 = metadata !{i32 786484, i32 0, metadata !24, metadata !"time", metadata !"time", metadata !"", metadata !25, i32 32, metadata !87, i32 1, i32 1, i32* @time} ; [ DW_TAG_variable ]
!90 = metadata !{i32 786484, i32 0, metadata !24, metadata !"sustainTime", metadata !"sustainTime", metadata !"", metadata !25, i32 44, metadata !87, i32 1, i32 1, i32* @sustainTime} ; [ DW_TAG_variable ]
!91 = metadata !{i32 786484, i32 0, null, metadata !"wait", metadata !"wait", metadata !"wait", metadata !25, i32 55, metadata !87, i32 1, i32 1, i1* @wait} ; [ DW_TAG_variable ]
!92 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !93, i32 315, metadata !94, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!93 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/root/repo/new/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!94 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !93, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!95 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !93, i32 316, metadata !94, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!96 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !93, i32 317, metadata !94, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!97 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !98, i32 26, metadata !87, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!98 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/root/repo/new/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!99 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !98, i32 30, metadata !87, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!100 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !101, i32 168, metadata !87, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!101 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/root/repo/new/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!102 = metadata !{metadata !103}
!103 = metadata !{i32 0, i32 31, metadata !104}
!104 = metadata !{metadata !105}
!105 = metadata !{metadata !"wave_in.V", metadata !106, metadata !"float", i32 0, i32 31}
!106 = metadata !{metadata !107}
!107 = metadata !{i32 0, i32 0, i32 1}
!108 = metadata !{metadata !109}
!109 = metadata !{i32 0, i32 31, metadata !110}
!110 = metadata !{metadata !111}
!111 = metadata !{metadata !"wave_out.V", metadata !106, metadata !"float", i32 0, i32 31}
!112 = metadata !{metadata !113}
!113 = metadata !{i32 0, i32 31, metadata !114}
!114 = metadata !{metadata !115}
!115 = metadata !{metadata !"press", metadata !116, metadata !"int", i32 0, i32 31}
!116 = metadata !{metadata !117}
!117 = metadata !{i32 0, i32 0, i32 0}
!118 = metadata !{metadata !119}
!119 = metadata !{i32 0, i32 31, metadata !120}
!120 = metadata !{metadata !121}
!121 = metadata !{metadata !"attackDuration", metadata !116, metadata !"int", i32 0, i32 31}
!122 = metadata !{metadata !123}
!123 = metadata !{i32 0, i32 31, metadata !124}
!124 = metadata !{metadata !125}
!125 = metadata !{metadata !"decayDuration", metadata !116, metadata !"int", i32 0, i32 31}
!126 = metadata !{metadata !127}
!127 = metadata !{i32 0, i32 31, metadata !128}
!128 = metadata !{metadata !129}
!129 = metadata !{metadata !"sustainAmplitude", metadata !116, metadata !"float", i32 0, i32 31}
!130 = metadata !{metadata !131}
!131 = metadata !{i32 0, i32 31, metadata !132}
!132 = metadata !{metadata !133}
!133 = metadata !{metadata !"releaseDuration", metadata !116, metadata !"int", i32 0, i32 31}
!134 = metadata !{i32 790531, metadata !135, metadata !"wave_in.V", null, i32 9, metadata !136, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!135 = metadata !{i32 786689, metadata !24, metadata !"wave_in", metadata !25, i32 16777225, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!136 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !137} ; [ DW_TAG_pointer_type ]
!137 = metadata !{i32 786438, metadata !30, metadata !"stream<float>", metadata !31, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !138, i32 0, null, metadata !85} ; [ DW_TAG_class_field_type ]
!138 = metadata !{metadata !33}
!139 = metadata !{i32 9, i32 23, metadata !24, null}
!140 = metadata !{i32 790531, metadata !141, metadata !"wave_out.V", null, i32 10, metadata !136, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!141 = metadata !{i32 786689, metadata !24, metadata !"wave_out", metadata !25, i32 33554442, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!142 = metadata !{i32 10, i32 23, metadata !24, null}
!143 = metadata !{i32 786689, metadata !24, metadata !"press", metadata !25, i32 50331660, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!144 = metadata !{i32 12, i32 6, metadata !24, null}
!145 = metadata !{i32 786689, metadata !24, metadata !"attackDuration", metadata !25, i32 67108877, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!146 = metadata !{i32 13, i32 6, metadata !24, null}
!147 = metadata !{i32 786689, metadata !24, metadata !"decayDuration", metadata !25, i32 83886094, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!148 = metadata !{i32 14, i32 6, metadata !24, null}
!149 = metadata !{i32 786689, metadata !24, metadata !"sustainAmplitude", metadata !25, i32 100663311, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!150 = metadata !{i32 15, i32 8, metadata !24, null}
!151 = metadata !{i32 786689, metadata !24, metadata !"releaseDuration", metadata !25, i32 117440528, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!152 = metadata !{i32 16, i32 6, metadata !24, null}
!153 = metadata !{i32 21, i32 1, metadata !154, null}
!154 = metadata !{i32 786443, metadata !24, i32 18, i32 2, metadata !25, i32 0} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 23, i32 1, metadata !154, null}
!156 = metadata !{i32 24, i32 1, metadata !154, null}
!157 = metadata !{i32 26, i32 1, metadata !154, null}
!158 = metadata !{i32 27, i32 1, metadata !154, null}
!159 = metadata !{i32 28, i32 1, metadata !154, null}
!160 = metadata !{i32 29, i32 1, metadata !154, null}
!161 = metadata !{i32 30, i32 1, metadata !154, null}
!162 = metadata !{i32 34, i32 45, metadata !154, null}
!163 = metadata !{i32 786688, metadata !154, metadata !"attackSlope", metadata !25, i32 34, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!164 = metadata !{i32 35, i32 83, metadata !154, null}
!165 = metadata !{i32 786688, metadata !154, metadata !"decaySlope", metadata !25, i32 35, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 36, i32 82, metadata !154, null}
!167 = metadata !{i32 786688, metadata !154, metadata !"releaseSlope", metadata !25, i32 36, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!168 = metadata !{i32 40, i32 2, metadata !154, null}
!169 = metadata !{i32 47, i32 2, metadata !154, null}
!170 = metadata !{i32 62, i32 3, metadata !171, null}
!171 = metadata !{i32 786443, metadata !154, i32 59, i32 16, metadata !25, i32 2} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 61, i32 3, metadata !171, null}
!173 = metadata !{i32 49, i32 3, metadata !174, null}
!174 = metadata !{i32 786443, metadata !154, i32 47, i32 36, metadata !25, i32 1} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 52, i32 2, metadata !154, null}
!176 = metadata !{i32 790531, metadata !177, metadata !"stream<float>.V", null, i32 101, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!177 = metadata !{i32 786689, metadata !178, metadata !"this", metadata !31, i32 16777317, metadata !179, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!178 = metadata !{i32 786478, i32 0, metadata !30, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !31, i32 101, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !55, metadata !39, i32 101} ; [ DW_TAG_subprogram ]
!179 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!180 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !137} ; [ DW_TAG_pointer_type ]
!181 = metadata !{i32 101, i32 48, metadata !178, metadata !182}
!182 = metadata !{i32 57, i32 2, metadata !154, null}
!183 = metadata !{i32 790531, metadata !184, metadata !"stream<float>.V", null, i32 123, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!184 = metadata !{i32 786689, metadata !185, metadata !"this", metadata !31, i32 16777339, metadata !179, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!185 = metadata !{i32 786478, i32 0, metadata !30, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !31, i32 123, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !70, metadata !39, i32 123} ; [ DW_TAG_subprogram ]
!186 = metadata !{i32 123, i32 48, metadata !185, metadata !187}
!187 = metadata !{i32 102, i32 9, metadata !188, metadata !182}
!188 = metadata !{i32 786443, metadata !178, i32 101, i32 82, metadata !31, i32 11} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 786688, metadata !190, metadata !"tmp", metadata !31, i32 124, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!190 = metadata !{i32 786443, metadata !185, i32 123, i32 73, metadata !31, i32 12} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 124, i32 22, metadata !190, metadata !187}
!192 = metadata !{i32 125, i32 9, metadata !190, metadata !187}
!193 = metadata !{i32 126, i32 9, metadata !190, metadata !187}
!194 = metadata !{i32 786688, metadata !154, metadata !"resultAmplitude", metadata !25, i32 38, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!195 = metadata !{i32 65, i32 2, metadata !154, null}
!196 = metadata !{i32 71, i32 2, metadata !154, null}
!197 = metadata !{i32 72, i32 3, metadata !198, null}
!198 = metadata !{i32 786443, metadata !154, i32 71, i32 27, metadata !25, i32 4} ; [ DW_TAG_lexical_block ]
!199 = metadata !{i32 75, i32 7, metadata !154, null}
!200 = metadata !{i32 76, i32 3, metadata !201, null}
!201 = metadata !{i32 786443, metadata !154, i32 75, i32 31, metadata !25, i32 5} ; [ DW_TAG_lexical_block ]
!202 = metadata !{i32 79, i32 7, metadata !154, null}
!203 = metadata !{i32 80, i32 3, metadata !204, null}
!204 = metadata !{i32 786443, metadata !154, i32 79, i32 30, metadata !25, i32 6} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 83, i32 7, metadata !154, null}
!206 = metadata !{i32 84, i32 3, metadata !207, null}
!207 = metadata !{i32 786443, metadata !154, i32 83, i32 29, metadata !25, i32 7} ; [ DW_TAG_lexical_block ]
!208 = metadata !{i32 145, i32 31, metadata !209, metadata !211}
!209 = metadata !{i32 786443, metadata !210, i32 144, i32 79, metadata !31, i32 10} ; [ DW_TAG_lexical_block ]
!210 = metadata !{i32 786478, i32 0, metadata !30, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !31, i32 144, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !77, metadata !39, i32 144} ; [ DW_TAG_subprogram ]
!211 = metadata !{i32 106, i32 9, metadata !212, metadata !214}
!212 = metadata !{i32 786443, metadata !213, i32 105, i32 88, metadata !31, i32 9} ; [ DW_TAG_lexical_block ]
!213 = metadata !{i32 786478, i32 0, metadata !30, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !31, i32 105, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !59, metadata !39, i32 105} ; [ DW_TAG_subprogram ]
!214 = metadata !{i32 94, i32 2, metadata !154, null}
!215 = metadata !{i32 92, i32 2, metadata !154, null}
!216 = metadata !{i32 790531, metadata !217, metadata !"stream<float>.V", null, i32 105, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!217 = metadata !{i32 786689, metadata !213, metadata !"this", metadata !31, i32 16777321, metadata !179, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!218 = metadata !{i32 105, i32 48, metadata !213, metadata !214}
!219 = metadata !{i32 790531, metadata !220, metadata !"stream<float>.V", null, i32 144, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!220 = metadata !{i32 786689, metadata !210, metadata !"this", metadata !31, i32 16777360, metadata !179, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!221 = metadata !{i32 144, i32 48, metadata !210, metadata !211}
!222 = metadata !{i32 786688, metadata !209, metadata !"tmp", metadata !31, i32 145, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!223 = metadata !{i32 145, i32 22, metadata !209, metadata !211}
!224 = metadata !{i32 146, i32 9, metadata !209, metadata !211}
!225 = metadata !{i32 66, i32 3, metadata !226, null}
!226 = metadata !{i32 786443, metadata !154, i32 65, i32 10, metadata !25, i32 3} ; [ DW_TAG_lexical_block ]
!227 = metadata !{i32 48, i32 3, metadata !174, null}
!228 = metadata !{i32 60, i32 3, metadata !171, null}
!229 = metadata !{i32 95, i32 1, metadata !154, null}
