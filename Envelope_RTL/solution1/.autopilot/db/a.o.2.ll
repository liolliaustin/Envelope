; ModuleID = '/home/austin/ECE1373_GhostSynth/modules/Envelope/Envelope_RTL/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wait = internal unnamed_addr global i1 false     ; [#uses=2 type=i1*]
@time = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@sustainTime = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@releaseTime = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@releaseSlope = internal unnamed_addr global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)sustainTime" = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)releaseTime" = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)releaseSlope" = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)decaySlope" = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)attackSlope" = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@envelope.str = internal unnamed_addr constant [9 x i8] c"envelope\00" ; [#uses=1 type=[9 x i8]*]
@decaySlope = internal unnamed_addr global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@attackSlope = internal unnamed_addr global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@.str5 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=5 type=[9 x i8]*]
@.str4 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=5 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=2 type=[5 x i8]*]
@.str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=2 type=[5 x i8]*]
@.str1 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=41 type=[1 x i8]*]

; [#uses=24]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @envelope(float* %wave_in.V, float* %wave_out.V, i32 %press, i32 %attackDuration, i32 %decayDuration, float %sustainAmplitude, i32 %releaseDuration) {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %wave_in.V), !map !104
  call void (...)* @_ssdm_op_SpecBitsMap(float* %wave_out.V), !map !110
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %press), !map !114
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %attackDuration), !map !120
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %decayDuration), !map !124
  call void (...)* @_ssdm_op_SpecBitsMap(float %sustainAmplitude), !map !128
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %releaseDuration), !map !132
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @envelope.str) nounwind
  %tmp.20 = alloca float, align 4                 ; [#uses=2 type=float*]
  %tmp = alloca float, align 4                    ; [#uses=2 type=float*]
  call void @llvm.dbg.value(metadata !{float* %wave_in.V}, i64 0, metadata !136), !dbg !141 ; [debug line = 9:23] [debug variable = wave_in.V]
  call void @llvm.dbg.value(metadata !{float* %wave_out.V}, i64 0, metadata !142), !dbg !144 ; [debug line = 10:23] [debug variable = wave_out.V]
  call void @llvm.dbg.value(metadata !{i32 %press}, i64 0, metadata !145), !dbg !146 ; [debug line = 12:6] [debug variable = press]
  call void @llvm.dbg.value(metadata !{i32 %attackDuration}, i64 0, metadata !147), !dbg !148 ; [debug line = 13:6] [debug variable = attackDuration]
  call void @llvm.dbg.value(metadata !{i32 %decayDuration}, i64 0, metadata !149), !dbg !150 ; [debug line = 14:6] [debug variable = decayDuration]
  call void @llvm.dbg.value(metadata !{float %sustainAmplitude}, i64 0, metadata !151), !dbg !152 ; [debug line = 15:8] [debug variable = sustainAmplitude]
  call void @llvm.dbg.value(metadata !{i32 %releaseDuration}, i64 0, metadata !153), !dbg !154 ; [debug line = 16:6] [debug variable = releaseDuration]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !155 ; [debug line = 21:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %wave_in.V, [5 x i8]* @.str2, i32 1, i32 1, [5 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !157 ; [debug line = 23:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %wave_out.V, [5 x i8]* @.str2, i32 1, i32 1, [5 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !158 ; [debug line = 24:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %press, [10 x i8]* @.str4, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str5, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !159 ; [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %attackDuration, [10 x i8]* @.str4, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str5, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !160 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %decayDuration, [10 x i8]* @.str4, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str5, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !161 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(float %sustainAmplitude, [10 x i8]* @.str4, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str5, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !162 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %releaseDuration, [10 x i8]* @.str4, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str5, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !163 ; [debug line = 30:1]
  %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)attackSlope.load" = load i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)attackSlope", align 1 ; [#uses=1 type=i1]
  br i1 %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)attackSlope.load", label %._crit_edge, label %codeRepl1, !dbg !164 ; [debug line = 33:52]

codeRepl1:                                        ; preds = %0
  %tmp.2.i = sitofp i32 %attackDuration to float, !dbg !164 ; [#uses=1 type=float] [debug line = 33:52]
  %tmp.3.i = fdiv float 2.000000e+00, %tmp.2.i, !dbg !164 ; [#uses=1 type=float] [debug line = 33:52]
  store float %tmp.3.i, float* @attackSlope, align 4, !dbg !164 ; [debug line = 33:52]
  store i1 true, i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)attackSlope", align 1, !dbg !164 ; [debug line = 33:52]
  br label %._crit_edge

._crit_edge:                                      ; preds = %codeRepl1, %0
  %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)decaySlope.load" = load i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)decaySlope", align 1 ; [#uses=1 type=i1]
  br i1 %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)decaySlope.load", label %._crit_edge5, label %codeRepl, !dbg !165 ; [debug line = 34:90]

codeRepl:                                         ; preds = %._crit_edge
  %tmp.5.i = fadd float %sustainAmplitude, -2.000000e+00, !dbg !165 ; [#uses=1 type=float] [debug line = 34:90]
  %tmp.6.i = sub nsw i32 %decayDuration, %attackDuration, !dbg !165 ; [#uses=1 type=i32] [debug line = 34:90]
  %tmp.7.i = sitofp i32 %tmp.6.i to float, !dbg !165 ; [#uses=1 type=float] [debug line = 34:90]
  %tmp.8.i = fdiv float %tmp.5.i, %tmp.7.i, !dbg !165 ; [#uses=1 type=float] [debug line = 34:90]
  store float %tmp.8.i, float* @decaySlope, align 4, !dbg !165 ; [debug line = 34:90]
  store i1 true, i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)decaySlope", align 1, !dbg !165 ; [debug line = 34:90]
  br label %._crit_edge5

._crit_edge5:                                     ; preds = %codeRepl, %._crit_edge
  %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)releaseSlope.load" = load i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)releaseSlope", align 1 ; [#uses=1 type=i1]
  br i1 %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)releaseSlope.load", label %._crit_edge6, label %codeRepl2, !dbg !166 ; [debug line = 35:89]

codeRepl2:                                        ; preds = %._crit_edge5
  %tmp..i_to_int = bitcast float %sustainAmplitude to i32, !dbg !166 ; [#uses=1 type=i32] [debug line = 35:89]
  %tmp..i_neg = xor i32 %tmp..i_to_int, -2147483648, !dbg !166 ; [#uses=1 type=i32] [debug line = 35:89]
  %tmp..i = bitcast i32 %tmp..i_neg to float, !dbg !166 ; [#uses=1 type=float] [debug line = 35:89]
  %tmp.10.i = sub nsw i32 %releaseDuration, %decayDuration, !dbg !166 ; [#uses=1 type=i32] [debug line = 35:89]
  %tmp.11.i = sitofp i32 %tmp.10.i to float, !dbg !166 ; [#uses=1 type=float] [debug line = 35:89]
  %tmp.12.i = fdiv float %tmp..i, %tmp.11.i, !dbg !166 ; [#uses=1 type=float] [debug line = 35:89]
  store float %tmp.12.i, float* @releaseSlope, align 4, !dbg !166 ; [debug line = 35:89]
  store i1 true, i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)releaseSlope", align 1, !dbg !166 ; [debug line = 35:89]
  br label %._crit_edge6

._crit_edge6:                                     ; preds = %codeRepl2, %._crit_edge5
  %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)releaseTime.load" = load i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)releaseTime", align 1 ; [#uses=1 type=i1]
  %releaseTime.load = load i32* @releaseTime, align 4, !dbg !167 ; [#uses=1 type=i32] [debug line = 48:3]
  br i1 %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)releaseTime.load", label %._crit_edge7, label %codeRepl3, !dbg !169 ; [debug line = 39:42]

codeRepl3:                                        ; preds = %._crit_edge6
  store i1 true, i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)releaseTime", align 1, !dbg !169 ; [debug line = 39:42]
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %codeRepl3, %._crit_edge6
  %releaseTime.flag = phi i1 [ true, %codeRepl3 ], [ false, %._crit_edge6 ] ; [#uses=1 type=i1]
  %releaseTime.loc = phi i32 [ %releaseDuration, %codeRepl3 ], [ %releaseTime.load, %._crit_edge6 ] ; [#uses=2 type=i32]
  %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)sustainTime.load" = load i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)sustainTime", align 1 ; [#uses=1 type=i1]
  %sustainTime.load = load i32* @sustainTime, align 4, !dbg !170 ; [#uses=1 type=i32] [debug line = 47:3]
  br i1 %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)sustainTime.load", label %._crit_edge8_ifconv, label %codeRepl4, !dbg !171 ; [debug line = 40:42]

codeRepl4:                                        ; preds = %._crit_edge7
  %tmp.15.i = add nsw i32 %decayDuration, 1, !dbg !171 ; [#uses=1 type=i32] [debug line = 40:42]
  store i1 true, i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)sustainTime", align 1, !dbg !171 ; [debug line = 40:42]
  br label %._crit_edge8_ifconv

._crit_edge8_ifconv:                              ; preds = %codeRepl4, %._crit_edge7
  %sustainTime.flag = phi i1 [ true, %codeRepl4 ], [ false, %._crit_edge7 ] ; [#uses=1 type=i1]
  %sustainTime.loc = phi i32 [ %tmp.15.i, %codeRepl4 ], [ %sustainTime.load, %._crit_edge7 ] ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{float* %wave_in.V}, i64 0, metadata !172), !dbg !177 ; [debug line = 101:48@43:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %wave_in.V}, i64 0, metadata !179), !dbg !182 ; [debug line = 123:48@102:9@43:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp}, metadata !185) nounwind, !dbg !187 ; [debug line = 124:22@102:9@43:2] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.floatP.floatP(float* %wave_in.V, float* %tmp) nounwind, !dbg !188 ; [debug line = 125:9@102:9@43:2]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !185), !dbg !189 ; [debug line = 126:9@102:9@43:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !185), !dbg !189 ; [debug line = 126:9@102:9@43:2] [debug variable = tmp]
  %resultAmplitude = load float* %tmp, align 4, !dbg !189 ; [#uses=4 type=float] [debug line = 126:9@102:9@43:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude}, i64 0, metadata !190), !dbg !189 ; [debug line = 126:9@102:9@43:2] [debug variable = resultAmplitude]
  %tmp.3 = icmp eq i32 %press, 0, !dbg !191       ; [#uses=4 type=i1] [debug line = 45:2]
  %wait.load = load i1* @wait, align 1            ; [#uses=3 type=i1]
  %tmp.5 = add nsw i32 %sustainTime.loc, 1, !dbg !170 ; [#uses=1 type=i32] [debug line = 47:3]
  %tmp.6 = add nsw i32 %releaseTime.loc, 1, !dbg !167 ; [#uses=2 type=i32] [debug line = 48:3]
  %not.tmp.3 = xor i1 %tmp.3, true                ; [#uses=4 type=i1]
  %releaseTime.new.1 = select i1 %tmp.3, i32 %releaseDuration, i32 %tmp.6 ; [#uses=1 type=i32]
  %releaseTime.loc.1 = select i1 %tmp.3, i32 %releaseTime.loc, i32 %tmp.6 ; [#uses=1 type=i32]
  %sustainTime.new.1 = select i1 %tmp.3, i32 %sustainTime.loc, i32 %tmp.5 ; [#uses=1 type=i32]
  %tmp. = xor i1 %wait.load, true, !dbg !192      ; [#uses=1 type=i1] [debug line = 51:2]
  %tmp.7 = or i1 %tmp., %not.tmp.3, !dbg !192     ; [#uses=4 type=i1] [debug line = 51:2]
  %time.load = load i32* @time, align 4, !dbg !193 ; [#uses=1 type=i32] [debug line = 57:2]
  %tmp.8 = add nsw i32 %decayDuration, 1, !dbg !194 ; [#uses=1 type=i32] [debug line = 54:3]
  %tmp1 = or i1 %wait.load, %not.tmp.3, !dbg !192 ; [#uses=1 type=i1] [debug line = 51:2]
  %releaseTime.flag.1. = or i1 %tmp1, %releaseTime.flag, !dbg !192 ; [#uses=1 type=i1] [debug line = 51:2]
  %releaseTime.new.1.releaseDuration = select i1 %tmp.7, i32 %releaseTime.new.1, i32 %releaseDuration, !dbg !192 ; [#uses=1 type=i32] [debug line = 51:2]
  %releaseTime.loc.1.releaseDuration = select i1 %tmp.7, i32 %releaseTime.loc.1, i32 %releaseDuration, !dbg !192 ; [#uses=1 type=i32] [debug line = 51:2]
  %tmp2 = or i1 %wait.load, %not.tmp.3, !dbg !192 ; [#uses=1 type=i1] [debug line = 51:2]
  %sustainTime.flag.1. = or i1 %tmp2, %sustainTime.flag, !dbg !192 ; [#uses=1 type=i1] [debug line = 51:2]
  %sustainTime.new.1.tmp.8 = select i1 %tmp.7, i32 %sustainTime.new.1, i32 %tmp.8, !dbg !192 ; [#uses=3 type=i32] [debug line = 51:2]
  %time.load. = select i1 %tmp.7, i32 %time.load, i32 0, !dbg !192 ; [#uses=8 type=i32] [debug line = 51:2]
  %tmp.1 = icmp slt i32 %time.load., %attackDuration, !dbg !193 ; [#uses=4 type=i1] [debug line = 57:2]
  br i1 %sustainTime.flag.1., label %mergeST5, label %._crit_edge10.new6

mergeST:                                          ; preds = %._crit_edge10.new6
  store i32 %releaseTime.new.1.releaseDuration, i32* @releaseTime, align 4, !dbg !169 ; [debug line = 39:42]
  br label %._crit_edge10.new_ifconv

._crit_edge10.new_ifconv:                         ; preds = %._crit_edge10.new6, %mergeST
  %attackSlope.load = load float* @attackSlope, align 4, !dbg !196 ; [#uses=1 type=float] [debug line = 58:3]
  %tmp.2 = sitofp i32 %time.load. to float, !dbg !196 ; [#uses=1 type=float] [debug line = 58:3]
  %tmp.4 = fmul float %attackSlope.load, %tmp.2, !dbg !196 ; [#uses=1 type=float] [debug line = 58:3]
  %resultAmplitude.1 = fmul float %resultAmplitude, %tmp.4, !dbg !196 ; [#uses=1 type=float] [debug line = 58:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.1}, i64 0, metadata !190), !dbg !196 ; [debug line = 58:3] [debug variable = resultAmplitude]
  %tmp.9 = icmp slt i32 %time.load., %decayDuration, !dbg !198 ; [#uses=2 type=i1] [debug line = 61:7]
  %decaySlope.load = load float* @decaySlope, align 4, !dbg !199 ; [#uses=1 type=float] [debug line = 62:3]
  %tmp.10 = sub nsw i32 %time.load., %attackDuration, !dbg !199 ; [#uses=1 type=i32] [debug line = 62:3]
  %tmp.11 = sitofp i32 %tmp.10 to float, !dbg !199 ; [#uses=1 type=float] [debug line = 62:3]
  %tmp.12 = fmul float %decaySlope.load, %tmp.11, !dbg !199 ; [#uses=1 type=float] [debug line = 62:3]
  %tmp.13 = fadd float %tmp.12, 2.000000e+00, !dbg !199 ; [#uses=1 type=float] [debug line = 62:3]
  %resultAmplitude.2 = fmul float %resultAmplitude, %tmp.13, !dbg !199 ; [#uses=1 type=float] [debug line = 62:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.2}, i64 0, metadata !190), !dbg !199 ; [debug line = 62:3] [debug variable = resultAmplitude]
  %tmp.14 = icmp slt i32 %time.load., %sustainTime.new.1.tmp.8, !dbg !201 ; [#uses=3 type=i1] [debug line = 65:7]
  %resultAmplitude.3 = fmul float %resultAmplitude, %sustainAmplitude, !dbg !202 ; [#uses=1 type=float] [debug line = 66:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.3}, i64 0, metadata !190), !dbg !202 ; [debug line = 66:3] [debug variable = resultAmplitude]
  %tmp.15 = icmp slt i32 %time.load., %releaseTime.loc.1.releaseDuration, !dbg !204 ; [#uses=2 type=i1] [debug line = 69:7]
  %releaseSlope.load = load float* @releaseSlope, align 4, !dbg !205 ; [#uses=1 type=float] [debug line = 70:3]
  %tmp.16 = sub nsw i32 %time.load., %sustainTime.new.1.tmp.8, !dbg !205 ; [#uses=1 type=i32] [debug line = 70:3]
  %tmp.17 = sitofp i32 %tmp.16 to float, !dbg !205 ; [#uses=1 type=float] [debug line = 70:3]
  %tmp.18 = fmul float %releaseSlope.load, %tmp.17, !dbg !205 ; [#uses=1 type=float] [debug line = 70:3]
  %tmp.19 = fadd float %tmp.18, %sustainAmplitude, !dbg !205 ; [#uses=1 type=float] [debug line = 70:3]
  %resultAmplitude.4 = fmul float %resultAmplitude, %tmp.19, !dbg !205 ; [#uses=1 type=float] [debug line = 70:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.4}, i64 0, metadata !190), !dbg !205 ; [debug line = 70:3] [debug variable = resultAmplitude]
  %not.tmp. = xor i1 %tmp.1, true                 ; [#uses=2 type=i1]
  %sel_tmp2 = and i1 %tmp.9, %not.tmp.            ; [#uses=3 type=i1]
  %sel_tmp = xor i1 %sel_tmp2, %not.tmp.          ; [#uses=1 type=i1]
  %sel_tmp6.demorgan = or i1 %tmp.1, %tmp.9       ; [#uses=3 type=i1]
  %tmp.18.not = xor i1 %tmp.14, true              ; [#uses=1 type=i1]
  %not.sel_tmp7 = or i1 %sel_tmp6.demorgan, %tmp.18.not ; [#uses=1 type=i1]
  %sel_tmp13.demorgan = or i1 %sel_tmp6.demorgan, %tmp.14 ; [#uses=2 type=i1]
  %tmp.19.not = xor i1 %tmp.15, true              ; [#uses=1 type=i1]
  %not.sel_tmp = or i1 %sel_tmp13.demorgan, %tmp.19.not ; [#uses=1 type=i1]
  %tmp3 = and i1 %not.sel_tmp7, %not.sel_tmp      ; [#uses=1 type=i1]
  %sel_tmp8 = and i1 %tmp3, %sel_tmp              ; [#uses=1 type=i1]
  %wait.flag.1 = or i1 %sel_tmp8, %not.tmp.3      ; [#uses=1 type=i1]
  %sel_tmp1 = xor i1 %sel_tmp6.demorgan, true     ; [#uses=1 type=i1]
  %sel_tmp3 = and i1 %tmp.14, %sel_tmp1           ; [#uses=2 type=i1]
  %sel_tmp4 = xor i1 %sel_tmp13.demorgan, true    ; [#uses=1 type=i1]
  %sel_tmp5 = and i1 %tmp.15, %sel_tmp4           ; [#uses=2 type=i1]
  %or_cond = or i1 %sel_tmp5, %sel_tmp3           ; [#uses=1 type=i1]
  %or_cond1 = or i1 %sel_tmp2, %tmp.1             ; [#uses=1 type=i1]
  %or_cond2 = or i1 %or_cond, %or_cond1           ; [#uses=1 type=i1]
  %not.or_cond = xor i1 %or_cond2, true           ; [#uses=1 type=i1]
  %resultAmplitude.5 = select i1 %tmp.1, float %resultAmplitude.1, float 0.000000e+00, !dbg !207 ; [#uses=1 type=float] [debug line = 145:31@106:9@80:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.5}, i64 0, metadata !190), !dbg !199 ; [debug line = 62:3] [debug variable = resultAmplitude]
  %resultAmplitude.6 = select i1 %sel_tmp2, float %resultAmplitude.2, float %resultAmplitude.5, !dbg !207 ; [#uses=1 type=float] [debug line = 145:31@106:9@80:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.6}, i64 0, metadata !190), !dbg !199 ; [debug line = 62:3] [debug variable = resultAmplitude]
  %resultAmplitude.7 = select i1 %sel_tmp3, float %resultAmplitude.3, float %resultAmplitude.6, !dbg !207 ; [#uses=1 type=float] [debug line = 145:31@106:9@80:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.7}, i64 0, metadata !190), !dbg !199 ; [debug line = 62:3] [debug variable = resultAmplitude]
  %resultAmplitude.9 = select i1 %sel_tmp5, float %resultAmplitude.4, float %resultAmplitude.7, !dbg !207 ; [#uses=1 type=float] [debug line = 145:31@106:9@80:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.9}, i64 0, metadata !190), !dbg !199 ; [debug line = 62:3] [debug variable = resultAmplitude]
  %tmp.21 = add nsw i32 %time.load., 1, !dbg !214 ; [#uses=1 type=i32] [debug line = 78:2]
  call void @llvm.dbg.value(metadata !{float* %wave_out.V}, i64 0, metadata !215), !dbg !217 ; [debug line = 105:48@80:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %wave_out.V}, i64 0, metadata !218), !dbg !220 ; [debug line = 144:48@106:9@80:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp.20}, metadata !221) nounwind, !dbg !222 ; [debug line = 145:22@106:9@80:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.9}, i64 0, metadata !221), !dbg !207 ; [debug line = 145:31@106:9@80:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.9}, i64 0, metadata !221), !dbg !207 ; [debug line = 145:31@106:9@80:2] [debug variable = tmp]
  store float %resultAmplitude.9, float* %tmp.20, align 4, !dbg !207 ; [debug line = 145:31@106:9@80:2]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %wave_out.V, float* %tmp.20) nounwind, !dbg !223 ; [debug line = 146:9@106:9@80:2]
  store i32 %tmp.21, i32* @time, align 4, !dbg !224 ; [debug line = 52:3]
  br i1 %wait.flag.1, label %mergeST7, label %.new

mergeST5:                                         ; preds = %._crit_edge8_ifconv
  store i32 %sustainTime.new.1.tmp.8, i32* @sustainTime, align 4, !dbg !171 ; [debug line = 40:42]
  br label %._crit_edge10.new6

._crit_edge10.new6:                               ; preds = %mergeST5, %._crit_edge8_ifconv
  br i1 %releaseTime.flag.1., label %mergeST, label %._crit_edge10.new_ifconv

mergeST7:                                         ; preds = %._crit_edge10.new_ifconv
  store i1 %not.or_cond, i1* @wait, align 1, !dbg !225 ; [debug line = 46:3]
  br label %.new

.new:                                             ; preds = %mergeST7, %._crit_edge10.new_ifconv
  ret void, !dbg !226                             ; [debug line = 81:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=8]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=7]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare void @_ssdm_op_IfWrite.Stream.floatP.floatP(float*, float*)

; [#uses=1]
declare void @_ssdm_op_IfRead.Stream.floatP.floatP(float*, float*)

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
!20 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope/Envelope_RTL/solution1/.autopilot/db/Envelope.pragma.2.cpp", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !21} ; [ DW_TAG_compile_unit ]
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !23, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !97, metadata !98, metadata !99, metadata !101, metadata !102}
!23 = metadata !{i32 786484, i32 0, metadata !24, metadata !"releaseTime", metadata !"releaseTime", metadata !"", metadata !25, i32 39, metadata !87, i32 1, i32 1, i32* @releaseTime} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786478, i32 0, metadata !25, metadata !"envelope", metadata !"envelope", metadata !"_Z8envelopeRN3hls6streamIfEES2_iiifi", metadata !25, i32 7, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 18} ; [ DW_TAG_subprogram ]
!25 = metadata !{i32 786473, metadata !"src/Envelope.cpp", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{null, metadata !28, metadata !28, metadata !87, metadata !87, metadata !87, metadata !34, metadata !87}
!28 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_reference_type ]
!29 = metadata !{i32 786434, metadata !30, metadata !"stream<float>", metadata !31, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !32, i32 0, null, metadata !85} ; [ DW_TAG_class_type ]
!30 = metadata !{i32 786489, null, metadata !"hls", metadata !31, i32 69} ; [ DW_TAG_namespace ]
!31 = metadata !{i32 786473, metadata !"/home/austin/Desktop/Vivado_HLS/2017.2/common/technology/autopilot/hls_stream.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
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
!88 = metadata !{i32 786484, i32 0, null, metadata !"wait", metadata !"wait", metadata !"wait", metadata !25, i32 41, metadata !87, i32 1, i32 1, i1* @wait} ; [ DW_TAG_variable ]
!89 = metadata !{i32 786484, i32 0, metadata !24, metadata !"decaySlope", metadata !"decaySlope", metadata !"", metadata !25, i32 34, metadata !34, i32 1, i32 1, float* @decaySlope} ; [ DW_TAG_variable ]
!90 = metadata !{i32 786484, i32 0, metadata !24, metadata !"attackSlope", metadata !"attackSlope", metadata !"", metadata !25, i32 33, metadata !34, i32 1, i32 1, float* @attackSlope} ; [ DW_TAG_variable ]
!91 = metadata !{i32 786484, i32 0, metadata !24, metadata !"releaseSlope", metadata !"releaseSlope", metadata !"", metadata !25, i32 35, metadata !34, i32 1, i32 1, float* @releaseSlope} ; [ DW_TAG_variable ]
!92 = metadata !{i32 786484, i32 0, metadata !24, metadata !"sustainTime", metadata !"sustainTime", metadata !"", metadata !25, i32 40, metadata !87, i32 1, i32 1, i32* @sustainTime} ; [ DW_TAG_variable ]
!93 = metadata !{i32 786484, i32 0, metadata !24, metadata !"time", metadata !"time", metadata !"", metadata !25, i32 32, metadata !87, i32 1, i32 1, i32* @time} ; [ DW_TAG_variable ]
!94 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !95, i32 315, metadata !96, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!95 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!96 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !95, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!97 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !95, i32 316, metadata !96, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!98 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !95, i32 317, metadata !96, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!99 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !100, i32 26, metadata !87, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!100 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!101 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !100, i32 30, metadata !87, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!102 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !103, i32 168, metadata !87, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!103 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!104 = metadata !{metadata !105}
!105 = metadata !{i32 0, i32 31, metadata !106}
!106 = metadata !{metadata !107}
!107 = metadata !{metadata !"wave_in.V", metadata !108, metadata !"float", i32 0, i32 31}
!108 = metadata !{metadata !109}
!109 = metadata !{i32 0, i32 0, i32 1}
!110 = metadata !{metadata !111}
!111 = metadata !{i32 0, i32 31, metadata !112}
!112 = metadata !{metadata !113}
!113 = metadata !{metadata !"wave_out.V", metadata !108, metadata !"float", i32 0, i32 31}
!114 = metadata !{metadata !115}
!115 = metadata !{i32 0, i32 31, metadata !116}
!116 = metadata !{metadata !117}
!117 = metadata !{metadata !"press", metadata !118, metadata !"int", i32 0, i32 31}
!118 = metadata !{metadata !119}
!119 = metadata !{i32 0, i32 0, i32 0}
!120 = metadata !{metadata !121}
!121 = metadata !{i32 0, i32 31, metadata !122}
!122 = metadata !{metadata !123}
!123 = metadata !{metadata !"attackDuration", metadata !118, metadata !"int", i32 0, i32 31}
!124 = metadata !{metadata !125}
!125 = metadata !{i32 0, i32 31, metadata !126}
!126 = metadata !{metadata !127}
!127 = metadata !{metadata !"decayDuration", metadata !118, metadata !"int", i32 0, i32 31}
!128 = metadata !{metadata !129}
!129 = metadata !{i32 0, i32 31, metadata !130}
!130 = metadata !{metadata !131}
!131 = metadata !{metadata !"sustainAmplitude", metadata !118, metadata !"float", i32 0, i32 31}
!132 = metadata !{metadata !133}
!133 = metadata !{i32 0, i32 31, metadata !134}
!134 = metadata !{metadata !135}
!135 = metadata !{metadata !"releaseDuration", metadata !118, metadata !"int", i32 0, i32 31}
!136 = metadata !{i32 790531, metadata !137, metadata !"wave_in.V", null, i32 9, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!137 = metadata !{i32 786689, metadata !24, metadata !"wave_in", metadata !25, i32 16777225, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ]
!139 = metadata !{i32 786438, metadata !30, metadata !"stream<float>", metadata !31, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !140, i32 0, null, metadata !85} ; [ DW_TAG_class_field_type ]
!140 = metadata !{metadata !33}
!141 = metadata !{i32 9, i32 23, metadata !24, null}
!142 = metadata !{i32 790531, metadata !143, metadata !"wave_out.V", null, i32 10, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!143 = metadata !{i32 786689, metadata !24, metadata !"wave_out", metadata !25, i32 33554442, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!144 = metadata !{i32 10, i32 23, metadata !24, null}
!145 = metadata !{i32 786689, metadata !24, metadata !"press", metadata !25, i32 50331660, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!146 = metadata !{i32 12, i32 6, metadata !24, null}
!147 = metadata !{i32 786689, metadata !24, metadata !"attackDuration", metadata !25, i32 67108877, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!148 = metadata !{i32 13, i32 6, metadata !24, null}
!149 = metadata !{i32 786689, metadata !24, metadata !"decayDuration", metadata !25, i32 83886094, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!150 = metadata !{i32 14, i32 6, metadata !24, null}
!151 = metadata !{i32 786689, metadata !24, metadata !"sustainAmplitude", metadata !25, i32 100663311, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!152 = metadata !{i32 15, i32 8, metadata !24, null}
!153 = metadata !{i32 786689, metadata !24, metadata !"releaseDuration", metadata !25, i32 117440528, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!154 = metadata !{i32 16, i32 6, metadata !24, null}
!155 = metadata !{i32 21, i32 1, metadata !156, null}
!156 = metadata !{i32 786443, metadata !24, i32 18, i32 2, metadata !25, i32 0} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 23, i32 1, metadata !156, null}
!158 = metadata !{i32 24, i32 1, metadata !156, null}
!159 = metadata !{i32 26, i32 1, metadata !156, null}
!160 = metadata !{i32 27, i32 1, metadata !156, null}
!161 = metadata !{i32 28, i32 1, metadata !156, null}
!162 = metadata !{i32 29, i32 1, metadata !156, null}
!163 = metadata !{i32 30, i32 1, metadata !156, null}
!164 = metadata !{i32 33, i32 52, metadata !156, null}
!165 = metadata !{i32 34, i32 90, metadata !156, null}
!166 = metadata !{i32 35, i32 89, metadata !156, null}
!167 = metadata !{i32 48, i32 3, metadata !168, null}
!168 = metadata !{i32 786443, metadata !156, i32 45, i32 11, metadata !25, i32 1} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 39, i32 42, metadata !156, null}
!170 = metadata !{i32 47, i32 3, metadata !168, null}
!171 = metadata !{i32 40, i32 42, metadata !156, null}
!172 = metadata !{i32 790531, metadata !173, metadata !"stream<float>.V", null, i32 101, metadata !176, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!173 = metadata !{i32 786689, metadata !174, metadata !"this", metadata !31, i32 16777317, metadata !175, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!174 = metadata !{i32 786478, i32 0, metadata !30, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !31, i32 101, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !55, metadata !39, i32 101} ; [ DW_TAG_subprogram ]
!175 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!176 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ]
!177 = metadata !{i32 101, i32 48, metadata !174, metadata !178}
!178 = metadata !{i32 43, i32 2, metadata !156, null}
!179 = metadata !{i32 790531, metadata !180, metadata !"stream<float>.V", null, i32 123, metadata !176, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!180 = metadata !{i32 786689, metadata !181, metadata !"this", metadata !31, i32 16777339, metadata !175, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!181 = metadata !{i32 786478, i32 0, metadata !30, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !31, i32 123, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !70, metadata !39, i32 123} ; [ DW_TAG_subprogram ]
!182 = metadata !{i32 123, i32 48, metadata !181, metadata !183}
!183 = metadata !{i32 102, i32 9, metadata !184, metadata !178}
!184 = metadata !{i32 786443, metadata !174, i32 101, i32 82, metadata !31, i32 10} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 786688, metadata !186, metadata !"tmp", metadata !31, i32 124, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 786443, metadata !181, i32 123, i32 73, metadata !31, i32 11} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 124, i32 22, metadata !186, metadata !183}
!188 = metadata !{i32 125, i32 9, metadata !186, metadata !183}
!189 = metadata !{i32 126, i32 9, metadata !186, metadata !183}
!190 = metadata !{i32 786688, metadata !156, metadata !"resultAmplitude", metadata !25, i32 37, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!191 = metadata !{i32 45, i32 2, metadata !156, null}
!192 = metadata !{i32 51, i32 2, metadata !156, null}
!193 = metadata !{i32 57, i32 2, metadata !156, null}
!194 = metadata !{i32 54, i32 3, metadata !195, null}
!195 = metadata !{i32 786443, metadata !156, i32 51, i32 10, metadata !25, i32 2} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 58, i32 3, metadata !197, null}
!197 = metadata !{i32 786443, metadata !156, i32 57, i32 27, metadata !25, i32 3} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 61, i32 7, metadata !156, null}
!199 = metadata !{i32 62, i32 3, metadata !200, null}
!200 = metadata !{i32 786443, metadata !156, i32 61, i32 31, metadata !25, i32 4} ; [ DW_TAG_lexical_block ]
!201 = metadata !{i32 65, i32 7, metadata !156, null}
!202 = metadata !{i32 66, i32 3, metadata !203, null}
!203 = metadata !{i32 786443, metadata !156, i32 65, i32 30, metadata !25, i32 5} ; [ DW_TAG_lexical_block ]
!204 = metadata !{i32 69, i32 7, metadata !156, null}
!205 = metadata !{i32 70, i32 3, metadata !206, null}
!206 = metadata !{i32 786443, metadata !156, i32 69, i32 29, metadata !25, i32 6} ; [ DW_TAG_lexical_block ]
!207 = metadata !{i32 145, i32 31, metadata !208, metadata !210}
!208 = metadata !{i32 786443, metadata !209, i32 144, i32 79, metadata !31, i32 9} ; [ DW_TAG_lexical_block ]
!209 = metadata !{i32 786478, i32 0, metadata !30, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !31, i32 144, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !77, metadata !39, i32 144} ; [ DW_TAG_subprogram ]
!210 = metadata !{i32 106, i32 9, metadata !211, metadata !213}
!211 = metadata !{i32 786443, metadata !212, i32 105, i32 88, metadata !31, i32 8} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 786478, i32 0, metadata !30, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !31, i32 105, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !59, metadata !39, i32 105} ; [ DW_TAG_subprogram ]
!213 = metadata !{i32 80, i32 2, metadata !156, null}
!214 = metadata !{i32 78, i32 2, metadata !156, null}
!215 = metadata !{i32 790531, metadata !216, metadata !"stream<float>.V", null, i32 105, metadata !176, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!216 = metadata !{i32 786689, metadata !212, metadata !"this", metadata !31, i32 16777321, metadata !175, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!217 = metadata !{i32 105, i32 48, metadata !212, metadata !213}
!218 = metadata !{i32 790531, metadata !219, metadata !"stream<float>.V", null, i32 144, metadata !176, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!219 = metadata !{i32 786689, metadata !209, metadata !"this", metadata !31, i32 16777360, metadata !175, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!220 = metadata !{i32 144, i32 48, metadata !209, metadata !210}
!221 = metadata !{i32 786688, metadata !208, metadata !"tmp", metadata !31, i32 145, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!222 = metadata !{i32 145, i32 22, metadata !208, metadata !210}
!223 = metadata !{i32 146, i32 9, metadata !208, metadata !210}
!224 = metadata !{i32 52, i32 3, metadata !195, null}
!225 = metadata !{i32 46, i32 3, metadata !168, null}
!226 = metadata !{i32 81, i32 1, metadata !156, null}
