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

; [#uses=25]
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
  %tmp.25 = alloca float, align 4                 ; [#uses=2 type=float*]
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
  %tmp.3.i = fdiv float 1.000000e+00, %tmp.2.i, !dbg !164 ; [#uses=1 type=float] [debug line = 33:52]
  store float %tmp.3.i, float* @attackSlope, align 4, !dbg !164 ; [debug line = 33:52]
  store i1 true, i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)attackSlope", align 1, !dbg !164 ; [debug line = 33:52]
  br label %._crit_edge

._crit_edge:                                      ; preds = %codeRepl1, %0
  %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)decaySlope.load" = load i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)decaySlope", align 1 ; [#uses=1 type=i1]
  br i1 %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)decaySlope.load", label %._crit_edge7, label %codeRepl, !dbg !165 ; [debug line = 34:90]

codeRepl:                                         ; preds = %._crit_edge
  %tmp.5.i = fadd float %sustainAmplitude, -1.000000e+00, !dbg !165 ; [#uses=1 type=float] [debug line = 34:90]
  %tmp.6.i = sub nsw i32 %decayDuration, %attackDuration, !dbg !165 ; [#uses=1 type=i32] [debug line = 34:90]
  %tmp.7.i = sitofp i32 %tmp.6.i to float, !dbg !165 ; [#uses=1 type=float] [debug line = 34:90]
  %tmp.8.i = fdiv float %tmp.5.i, %tmp.7.i, !dbg !165 ; [#uses=1 type=float] [debug line = 34:90]
  store float %tmp.8.i, float* @decaySlope, align 4, !dbg !165 ; [debug line = 34:90]
  store i1 true, i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)decaySlope", align 1, !dbg !165 ; [debug line = 34:90]
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %codeRepl, %._crit_edge
  %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)releaseSlope.load" = load i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)releaseSlope", align 1 ; [#uses=1 type=i1]
  br i1 %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)releaseSlope.load", label %._crit_edge8, label %codeRepl2, !dbg !166 ; [debug line = 35:89]

codeRepl2:                                        ; preds = %._crit_edge7
  %tmp..i_to_int = bitcast float %sustainAmplitude to i32, !dbg !166 ; [#uses=1 type=i32] [debug line = 35:89]
  %tmp..i_neg = xor i32 %tmp..i_to_int, -2147483648, !dbg !166 ; [#uses=1 type=i32] [debug line = 35:89]
  %tmp..i = bitcast i32 %tmp..i_neg to float, !dbg !166 ; [#uses=1 type=float] [debug line = 35:89]
  %tmp.10.i = sub nsw i32 %releaseDuration, %decayDuration, !dbg !166 ; [#uses=1 type=i32] [debug line = 35:89]
  %tmp.11.i = sitofp i32 %tmp.10.i to float, !dbg !166 ; [#uses=1 type=float] [debug line = 35:89]
  %tmp.12.i = fdiv float %tmp..i, %tmp.11.i, !dbg !166 ; [#uses=1 type=float] [debug line = 35:89]
  store float %tmp.12.i, float* @releaseSlope, align 4, !dbg !166 ; [debug line = 35:89]
  store i1 true, i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)releaseSlope", align 1, !dbg !166 ; [debug line = 35:89]
  br label %._crit_edge8

._crit_edge8:                                     ; preds = %codeRepl2, %._crit_edge7
  %sustainAmplitude_to_int = bitcast float %sustainAmplitude to i32 ; [#uses=2 type=i32]
  %tmp.1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sustainAmplitude_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.2 = trunc i32 %sustainAmplitude_to_int to i23 ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp.1, -1                 ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp.2, 0                 ; [#uses=1 type=i1]
  %tmp.3 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %tmp.4 = fcmp ogt float %sustainAmplitude, 1.000000e+00, !dbg !167 ; [#uses=1 type=i1] [debug line = 39:2]
  %tmp.9 = and i1 %tmp.3, %tmp.4, !dbg !167       ; [#uses=1 type=i1] [debug line = 39:2]
  %sustainAmplitude.assign = select i1 %tmp.9, float 1.000000e+00, float %sustainAmplitude, !dbg !167 ; [#uses=2 type=float] [debug line = 39:2]
  call void @llvm.dbg.value(metadata !{float %sustainAmplitude.assign}, i64 0, metadata !151), !dbg !167 ; [debug line = 39:2] [debug variable = sustainAmplitude]
  %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)releaseTime.load" = load i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)releaseTime", align 1 ; [#uses=1 type=i1]
  %releaseTime.load = load i32* @releaseTime, align 4, !dbg !168 ; [#uses=1 type=i32] [debug line = 51:3]
  br i1 %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)releaseTime.load", label %._crit_edge9, label %codeRepl3, !dbg !170 ; [debug line = 42:42]

codeRepl3:                                        ; preds = %._crit_edge8
  store i1 true, i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)releaseTime", align 1, !dbg !170 ; [debug line = 42:42]
  br label %._crit_edge9

._crit_edge9:                                     ; preds = %codeRepl3, %._crit_edge8
  %releaseTime.flag = phi i1 [ true, %codeRepl3 ], [ false, %._crit_edge8 ] ; [#uses=1 type=i1]
  %releaseTime.loc = phi i32 [ %releaseDuration, %codeRepl3 ], [ %releaseTime.load, %._crit_edge8 ] ; [#uses=2 type=i32]
  %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)sustainTime.load" = load i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)sustainTime", align 1 ; [#uses=1 type=i1]
  %sustainTime.load = load i32* @sustainTime, align 4, !dbg !171 ; [#uses=1 type=i32] [debug line = 50:3]
  br i1 %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)sustainTime.load", label %._crit_edge10_ifconv, label %codeRepl4, !dbg !172 ; [debug line = 43:42]

codeRepl4:                                        ; preds = %._crit_edge9
  %tmp.16.i = add nsw i32 %decayDuration, 1, !dbg !172 ; [#uses=1 type=i32] [debug line = 43:42]
  store i1 true, i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, float, int)sustainTime", align 1, !dbg !172 ; [debug line = 43:42]
  br label %._crit_edge10_ifconv

._crit_edge10_ifconv:                             ; preds = %codeRepl4, %._crit_edge9
  %sustainTime.flag = phi i1 [ true, %codeRepl4 ], [ false, %._crit_edge9 ] ; [#uses=1 type=i1]
  %sustainTime.loc = phi i32 [ %tmp.16.i, %codeRepl4 ], [ %sustainTime.load, %._crit_edge9 ] ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{float* %wave_in.V}, i64 0, metadata !173), !dbg !178 ; [debug line = 101:48@46:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %wave_in.V}, i64 0, metadata !180), !dbg !183 ; [debug line = 123:48@102:9@46:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp}, metadata !186) nounwind, !dbg !188 ; [debug line = 124:22@102:9@46:2] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.floatP.floatP(float* %wave_in.V, float* %tmp) nounwind, !dbg !189 ; [debug line = 125:9@102:9@46:2]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !186), !dbg !190 ; [debug line = 126:9@102:9@46:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !186), !dbg !190 ; [debug line = 126:9@102:9@46:2] [debug variable = tmp]
  %resultAmplitude = load float* %tmp, align 4, !dbg !190 ; [#uses=4 type=float] [debug line = 126:9@102:9@46:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude}, i64 0, metadata !191), !dbg !190 ; [debug line = 126:9@102:9@46:2] [debug variable = resultAmplitude]
  %tmp.5 = icmp eq i32 %press, 0, !dbg !192       ; [#uses=4 type=i1] [debug line = 48:2]
  %wait.load = load i1* @wait, align 1            ; [#uses=3 type=i1]
  %tmp.6 = add nsw i32 %sustainTime.loc, 1, !dbg !171 ; [#uses=1 type=i32] [debug line = 50:3]
  %tmp.7 = add nsw i32 %releaseTime.loc, 1, !dbg !168 ; [#uses=2 type=i32] [debug line = 51:3]
  %not.tmp.5 = xor i1 %tmp.5, true                ; [#uses=4 type=i1]
  %releaseTime.new.1 = select i1 %tmp.5, i32 %releaseDuration, i32 %tmp.7 ; [#uses=1 type=i32]
  %releaseTime.loc.1 = select i1 %tmp.5, i32 %releaseTime.loc, i32 %tmp.7 ; [#uses=1 type=i32]
  %sustainTime.new.1 = select i1 %tmp.5, i32 %sustainTime.loc, i32 %tmp.6 ; [#uses=1 type=i32]
  %tmp. = xor i1 %wait.load, true, !dbg !193      ; [#uses=1 type=i1] [debug line = 54:2]
  %tmp.8 = or i1 %tmp., %not.tmp.5, !dbg !193     ; [#uses=4 type=i1] [debug line = 54:2]
  %time.load = load i32* @time, align 4, !dbg !194 ; [#uses=1 type=i32] [debug line = 60:2]
  %tmp.10 = add nsw i32 %decayDuration, 1, !dbg !195 ; [#uses=1 type=i32] [debug line = 57:3]
  %tmp10 = or i1 %wait.load, %not.tmp.5, !dbg !193 ; [#uses=1 type=i1] [debug line = 54:2]
  %releaseTime.flag.1. = or i1 %tmp10, %releaseTime.flag, !dbg !193 ; [#uses=1 type=i1] [debug line = 54:2]
  %releaseTime.new.1.releaseDuration = select i1 %tmp.8, i32 %releaseTime.new.1, i32 %releaseDuration, !dbg !193 ; [#uses=1 type=i32] [debug line = 54:2]
  %releaseTime.loc.1.releaseDuration = select i1 %tmp.8, i32 %releaseTime.loc.1, i32 %releaseDuration, !dbg !193 ; [#uses=1 type=i32] [debug line = 54:2]
  %tmp11 = or i1 %wait.load, %not.tmp.5, !dbg !193 ; [#uses=1 type=i1] [debug line = 54:2]
  %sustainTime.flag.1. = or i1 %tmp11, %sustainTime.flag, !dbg !193 ; [#uses=1 type=i1] [debug line = 54:2]
  %sustainTime.new.1.tmp. = select i1 %tmp.8, i32 %sustainTime.new.1, i32 %tmp.10, !dbg !193 ; [#uses=3 type=i32] [debug line = 54:2]
  %time.load. = select i1 %tmp.8, i32 %time.load, i32 0, !dbg !193 ; [#uses=8 type=i32] [debug line = 54:2]
  %tmp.11 = icmp slt i32 %time.load., %attackDuration, !dbg !194 ; [#uses=4 type=i1] [debug line = 60:2]
  br i1 %sustainTime.flag.1., label %mergeST5, label %._crit_edge12.new6

mergeST:                                          ; preds = %._crit_edge12.new6
  store i32 %releaseTime.new.1.releaseDuration, i32* @releaseTime, align 4, !dbg !170 ; [debug line = 42:42]
  br label %._crit_edge12.new_ifconv

._crit_edge12.new_ifconv:                         ; preds = %._crit_edge12.new6, %mergeST
  %attackSlope.load = load float* @attackSlope, align 4, !dbg !197 ; [#uses=1 type=float] [debug line = 61:3]
  %tmp.12 = sitofp i32 %time.load. to float, !dbg !197 ; [#uses=1 type=float] [debug line = 61:3]
  %tmp.13 = fmul float %attackSlope.load, %tmp.12, !dbg !197 ; [#uses=1 type=float] [debug line = 61:3]
  %resultAmplitude.1 = fmul float %resultAmplitude, %tmp.13, !dbg !197 ; [#uses=1 type=float] [debug line = 61:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.1}, i64 0, metadata !191), !dbg !197 ; [debug line = 61:3] [debug variable = resultAmplitude]
  %tmp.14 = icmp slt i32 %time.load., %decayDuration, !dbg !199 ; [#uses=2 type=i1] [debug line = 64:7]
  %decaySlope.load = load float* @decaySlope, align 4, !dbg !200 ; [#uses=1 type=float] [debug line = 65:3]
  %tmp.15 = sub nsw i32 %time.load., %attackDuration, !dbg !200 ; [#uses=1 type=i32] [debug line = 65:3]
  %tmp.16 = sitofp i32 %tmp.15 to float, !dbg !200 ; [#uses=1 type=float] [debug line = 65:3]
  %tmp.17 = fmul float %decaySlope.load, %tmp.16, !dbg !200 ; [#uses=1 type=float] [debug line = 65:3]
  %tmp.18 = fadd float %tmp.17, 1.000000e+00, !dbg !200 ; [#uses=1 type=float] [debug line = 65:3]
  %resultAmplitude.2 = fmul float %resultAmplitude, %tmp.18, !dbg !200 ; [#uses=1 type=float] [debug line = 65:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.2}, i64 0, metadata !191), !dbg !200 ; [debug line = 65:3] [debug variable = resultAmplitude]
  %tmp.19 = icmp slt i32 %time.load., %sustainTime.new.1.tmp., !dbg !202 ; [#uses=3 type=i1] [debug line = 68:7]
  %resultAmplitude.3 = fmul float %resultAmplitude, %sustainAmplitude.assign, !dbg !203 ; [#uses=1 type=float] [debug line = 69:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.3}, i64 0, metadata !191), !dbg !203 ; [debug line = 69:3] [debug variable = resultAmplitude]
  %tmp.20 = icmp slt i32 %time.load., %releaseTime.loc.1.releaseDuration, !dbg !205 ; [#uses=2 type=i1] [debug line = 72:7]
  %releaseSlope.load = load float* @releaseSlope, align 4, !dbg !206 ; [#uses=1 type=float] [debug line = 73:3]
  %tmp.21 = sub nsw i32 %time.load., %sustainTime.new.1.tmp., !dbg !206 ; [#uses=1 type=i32] [debug line = 73:3]
  %tmp.22 = sitofp i32 %tmp.21 to float, !dbg !206 ; [#uses=1 type=float] [debug line = 73:3]
  %tmp.23 = fmul float %releaseSlope.load, %tmp.22, !dbg !206 ; [#uses=1 type=float] [debug line = 73:3]
  %tmp.24 = fadd float %tmp.23, %sustainAmplitude.assign, !dbg !206 ; [#uses=1 type=float] [debug line = 73:3]
  %resultAmplitude.4 = fmul float %resultAmplitude, %tmp.24, !dbg !206 ; [#uses=1 type=float] [debug line = 73:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.4}, i64 0, metadata !191), !dbg !206 ; [debug line = 73:3] [debug variable = resultAmplitude]
  %not.tmp. = xor i1 %tmp.11, true                ; [#uses=2 type=i1]
  %sel_tmp2 = and i1 %tmp.14, %not.tmp.           ; [#uses=3 type=i1]
  %sel_tmp = xor i1 %sel_tmp2, %not.tmp.          ; [#uses=1 type=i1]
  %sel_tmp6.demorgan = or i1 %tmp.11, %tmp.14     ; [#uses=3 type=i1]
  %tmp.19.not = xor i1 %tmp.19, true              ; [#uses=1 type=i1]
  %not.sel_tmp7 = or i1 %sel_tmp6.demorgan, %tmp.19.not ; [#uses=1 type=i1]
  %sel_tmp13.demorgan = or i1 %sel_tmp6.demorgan, %tmp.19 ; [#uses=2 type=i1]
  %tmp.20.not = xor i1 %tmp.20, true              ; [#uses=1 type=i1]
  %not.sel_tmp = or i1 %sel_tmp13.demorgan, %tmp.20.not ; [#uses=1 type=i1]
  %tmp12 = and i1 %not.sel_tmp7, %not.sel_tmp     ; [#uses=1 type=i1]
  %sel_tmp8 = and i1 %tmp12, %sel_tmp             ; [#uses=1 type=i1]
  %wait.flag.1 = or i1 %sel_tmp8, %not.tmp.5      ; [#uses=1 type=i1]
  %sel_tmp1 = xor i1 %sel_tmp6.demorgan, true     ; [#uses=1 type=i1]
  %sel_tmp3 = and i1 %tmp.19, %sel_tmp1           ; [#uses=2 type=i1]
  %sel_tmp4 = xor i1 %sel_tmp13.demorgan, true    ; [#uses=1 type=i1]
  %sel_tmp5 = and i1 %tmp.20, %sel_tmp4           ; [#uses=2 type=i1]
  %or_cond = or i1 %sel_tmp5, %sel_tmp3           ; [#uses=1 type=i1]
  %or_cond1 = or i1 %sel_tmp2, %tmp.11            ; [#uses=1 type=i1]
  %or_cond2 = or i1 %or_cond, %or_cond1           ; [#uses=1 type=i1]
  %not.or_cond = xor i1 %or_cond2, true           ; [#uses=1 type=i1]
  %resultAmplitude.5 = select i1 %tmp.11, float %resultAmplitude.1, float 0.000000e+00, !dbg !208 ; [#uses=1 type=float] [debug line = 145:31@106:9@83:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.5}, i64 0, metadata !191), !dbg !200 ; [debug line = 65:3] [debug variable = resultAmplitude]
  %resultAmplitude.6 = select i1 %sel_tmp2, float %resultAmplitude.2, float %resultAmplitude.5, !dbg !208 ; [#uses=1 type=float] [debug line = 145:31@106:9@83:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.6}, i64 0, metadata !191), !dbg !200 ; [debug line = 65:3] [debug variable = resultAmplitude]
  %resultAmplitude.7 = select i1 %sel_tmp3, float %resultAmplitude.3, float %resultAmplitude.6, !dbg !208 ; [#uses=1 type=float] [debug line = 145:31@106:9@83:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.7}, i64 0, metadata !191), !dbg !200 ; [debug line = 65:3] [debug variable = resultAmplitude]
  %resultAmplitude.9 = select i1 %sel_tmp5, float %resultAmplitude.4, float %resultAmplitude.7, !dbg !208 ; [#uses=1 type=float] [debug line = 145:31@106:9@83:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.9}, i64 0, metadata !191), !dbg !200 ; [debug line = 65:3] [debug variable = resultAmplitude]
  %tmp.26 = add nsw i32 %time.load., 1, !dbg !215 ; [#uses=1 type=i32] [debug line = 81:2]
  call void @llvm.dbg.value(metadata !{float* %wave_out.V}, i64 0, metadata !216), !dbg !218 ; [debug line = 105:48@83:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %wave_out.V}, i64 0, metadata !219), !dbg !221 ; [debug line = 144:48@106:9@83:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp.25}, metadata !222) nounwind, !dbg !223 ; [debug line = 145:22@106:9@83:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.9}, i64 0, metadata !222), !dbg !208 ; [debug line = 145:31@106:9@83:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.9}, i64 0, metadata !222), !dbg !208 ; [debug line = 145:31@106:9@83:2] [debug variable = tmp]
  store float %resultAmplitude.9, float* %tmp.25, align 4, !dbg !208 ; [debug line = 145:31@106:9@83:2]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %wave_out.V, float* %tmp.25) nounwind, !dbg !224 ; [debug line = 146:9@106:9@83:2]
  store i32 %tmp.26, i32* @time, align 4, !dbg !225 ; [debug line = 55:3]
  br i1 %wait.flag.1, label %mergeST7, label %.new

mergeST5:                                         ; preds = %._crit_edge10_ifconv
  store i32 %sustainTime.new.1.tmp., i32* @sustainTime, align 4, !dbg !172 ; [debug line = 43:42]
  br label %._crit_edge12.new6

._crit_edge12.new6:                               ; preds = %mergeST5, %._crit_edge10_ifconv
  br i1 %releaseTime.flag.1., label %mergeST, label %._crit_edge12.new_ifconv

mergeST7:                                         ; preds = %._crit_edge12.new_ifconv
  store i1 %not.or_cond, i1* @wait, align 1, !dbg !226 ; [debug line = 49:3]
  br label %.new

.new:                                             ; preds = %mergeST7, %._crit_edge12.new_ifconv
  ret void, !dbg !227                             ; [debug line = 84:1]
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
!22 = metadata !{metadata !23, metadata !26, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !97, metadata !98, metadata !99, metadata !101, metadata !102}
!23 = metadata !{i32 786484, i32 0, null, metadata !"wait", metadata !"wait", metadata !"wait", metadata !24, i32 44, metadata !25, i32 1, i32 1, i1* @wait} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786473, metadata !"src/Envelope.cpp", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!25 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!26 = metadata !{i32 786484, i32 0, metadata !27, metadata !"decaySlope", metadata !"decaySlope", metadata !"", metadata !24, i32 34, metadata !36, i32 1, i32 1, float* @decaySlope} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786478, i32 0, metadata !24, metadata !"envelope", metadata !"envelope", metadata !"_Z8envelopeRN3hls6streamIfEES2_iiifi", metadata !24, i32 7, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !41, i32 18} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!29 = metadata !{null, metadata !30, metadata !30, metadata !25, metadata !25, metadata !25, metadata !36, metadata !25}
!30 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_reference_type ]
!31 = metadata !{i32 786434, metadata !32, metadata !"stream<float>", metadata !33, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !34, i32 0, null, metadata !87} ; [ DW_TAG_class_type ]
!32 = metadata !{i32 786489, null, metadata !"hls", metadata !33, i32 69} ; [ DW_TAG_namespace ]
!33 = metadata !{i32 786473, metadata !"/home/austin/Desktop/Vivado_HLS/2017.2/common/technology/autopilot/hls_stream.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!34 = metadata !{metadata !35, metadata !37, metadata !43, metadata !49, metadata !54, metadata !57, metadata !61, metadata !66, metadata !71, metadata !72, metadata !73, metadata !76, metadata !79, metadata !80, metadata !83}
!35 = metadata !{i32 786445, metadata !31, metadata !"V", metadata !33, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ]
!36 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!37 = metadata !{i32 786478, i32 0, metadata !31, metadata !"stream", metadata !"stream", metadata !"", metadata !33, i32 83, metadata !38, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !41, i32 83} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!39 = metadata !{null, metadata !40}
!40 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !31} ; [ DW_TAG_pointer_type ]
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!43 = metadata !{i32 786478, i32 0, metadata !31, metadata !"stream", metadata !"stream", metadata !"", metadata !33, i32 86, metadata !44, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !41, i32 86} ; [ DW_TAG_subprogram ]
!44 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!45 = metadata !{null, metadata !40, metadata !46}
!46 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ]
!47 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_const_type ]
!48 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!49 = metadata !{i32 786478, i32 0, metadata !31, metadata !"stream", metadata !"stream", metadata !"", metadata !33, i32 91, metadata !50, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !41, i32 91} ; [ DW_TAG_subprogram ]
!50 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!51 = metadata !{null, metadata !40, metadata !52}
!52 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_reference_type ]
!53 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_const_type ]
!54 = metadata !{i32 786478, i32 0, metadata !31, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !33, i32 94, metadata !55, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !41, i32 94} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!56 = metadata !{metadata !30, metadata !40, metadata !52}
!57 = metadata !{i32 786478, i32 0, metadata !31, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !33, i32 101, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !41, i32 101} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!59 = metadata !{null, metadata !40, metadata !60}
!60 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_reference_type ]
!61 = metadata !{i32 786478, i32 0, metadata !31, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !33, i32 105, metadata !62, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !41, i32 105} ; [ DW_TAG_subprogram ]
!62 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!63 = metadata !{null, metadata !40, metadata !64}
!64 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_reference_type ]
!65 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_const_type ]
!66 = metadata !{i32 786478, i32 0, metadata !31, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !33, i32 112, metadata !67, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !41, i32 112} ; [ DW_TAG_subprogram ]
!67 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !68, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!68 = metadata !{metadata !69, metadata !70}
!69 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!70 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !53} ; [ DW_TAG_pointer_type ]
!71 = metadata !{i32 786478, i32 0, metadata !31, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !33, i32 117, metadata !67, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !41, i32 117} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 786478, i32 0, metadata !31, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !33, i32 123, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !41, i32 123} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 786478, i32 0, metadata !31, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !33, i32 129, metadata !74, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !41, i32 129} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!75 = metadata !{metadata !36, metadata !40}
!76 = metadata !{i32 786478, i32 0, metadata !31, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !33, i32 136, metadata !77, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !41, i32 136} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{metadata !69, metadata !40, metadata !60}
!79 = metadata !{i32 786478, i32 0, metadata !31, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !33, i32 144, metadata !62, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !41, i32 144} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786478, i32 0, metadata !31, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !33, i32 150, metadata !81, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !41, i32 150} ; [ DW_TAG_subprogram ]
!81 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!82 = metadata !{metadata !69, metadata !40, metadata !64}
!83 = metadata !{i32 786478, i32 0, metadata !31, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !33, i32 157, metadata !84, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !41, i32 157} ; [ DW_TAG_subprogram ]
!84 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!85 = metadata !{metadata !86, metadata !40}
!86 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!87 = metadata !{metadata !88}
!88 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !36, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!89 = metadata !{i32 786484, i32 0, metadata !27, metadata !"attackSlope", metadata !"attackSlope", metadata !"", metadata !24, i32 33, metadata !36, i32 1, i32 1, float* @attackSlope} ; [ DW_TAG_variable ]
!90 = metadata !{i32 786484, i32 0, metadata !27, metadata !"releaseTime", metadata !"releaseTime", metadata !"", metadata !24, i32 42, metadata !25, i32 1, i32 1, i32* @releaseTime} ; [ DW_TAG_variable ]
!91 = metadata !{i32 786484, i32 0, metadata !27, metadata !"releaseSlope", metadata !"releaseSlope", metadata !"", metadata !24, i32 35, metadata !36, i32 1, i32 1, float* @releaseSlope} ; [ DW_TAG_variable ]
!92 = metadata !{i32 786484, i32 0, metadata !27, metadata !"sustainTime", metadata !"sustainTime", metadata !"", metadata !24, i32 43, metadata !25, i32 1, i32 1, i32* @sustainTime} ; [ DW_TAG_variable ]
!93 = metadata !{i32 786484, i32 0, metadata !27, metadata !"time", metadata !"time", metadata !"", metadata !24, i32 32, metadata !25, i32 1, i32 1, i32* @time} ; [ DW_TAG_variable ]
!94 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !95, i32 315, metadata !96, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!95 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!96 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !95, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!97 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !95, i32 316, metadata !96, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!98 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !95, i32 317, metadata !96, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!99 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !100, i32 26, metadata !25, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!100 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!101 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !100, i32 30, metadata !25, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!102 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !103, i32 168, metadata !25, i32 0, i32 1, null} ; [ DW_TAG_variable ]
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
!137 = metadata !{i32 786689, metadata !27, metadata !"wave_in", metadata !24, i32 16777225, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ]
!139 = metadata !{i32 786438, metadata !32, metadata !"stream<float>", metadata !33, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !140, i32 0, null, metadata !87} ; [ DW_TAG_class_field_type ]
!140 = metadata !{metadata !35}
!141 = metadata !{i32 9, i32 23, metadata !27, null}
!142 = metadata !{i32 790531, metadata !143, metadata !"wave_out.V", null, i32 10, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!143 = metadata !{i32 786689, metadata !27, metadata !"wave_out", metadata !24, i32 33554442, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!144 = metadata !{i32 10, i32 23, metadata !27, null}
!145 = metadata !{i32 786689, metadata !27, metadata !"press", metadata !24, i32 50331660, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!146 = metadata !{i32 12, i32 6, metadata !27, null}
!147 = metadata !{i32 786689, metadata !27, metadata !"attackDuration", metadata !24, i32 67108877, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!148 = metadata !{i32 13, i32 6, metadata !27, null}
!149 = metadata !{i32 786689, metadata !27, metadata !"decayDuration", metadata !24, i32 83886094, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!150 = metadata !{i32 14, i32 6, metadata !27, null}
!151 = metadata !{i32 786689, metadata !27, metadata !"sustainAmplitude", metadata !24, i32 100663311, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!152 = metadata !{i32 15, i32 8, metadata !27, null}
!153 = metadata !{i32 786689, metadata !27, metadata !"releaseDuration", metadata !24, i32 117440528, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!154 = metadata !{i32 16, i32 6, metadata !27, null}
!155 = metadata !{i32 21, i32 1, metadata !156, null}
!156 = metadata !{i32 786443, metadata !27, i32 18, i32 2, metadata !24, i32 0} ; [ DW_TAG_lexical_block ]
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
!167 = metadata !{i32 39, i32 2, metadata !156, null}
!168 = metadata !{i32 51, i32 3, metadata !169, null}
!169 = metadata !{i32 786443, metadata !156, i32 48, i32 11, metadata !24, i32 1} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 42, i32 42, metadata !156, null}
!171 = metadata !{i32 50, i32 3, metadata !169, null}
!172 = metadata !{i32 43, i32 42, metadata !156, null}
!173 = metadata !{i32 790531, metadata !174, metadata !"stream<float>.V", null, i32 101, metadata !177, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!174 = metadata !{i32 786689, metadata !175, metadata !"this", metadata !33, i32 16777317, metadata !176, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!175 = metadata !{i32 786478, i32 0, metadata !32, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !33, i32 101, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !57, metadata !41, i32 101} ; [ DW_TAG_subprogram ]
!176 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ]
!177 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ]
!178 = metadata !{i32 101, i32 48, metadata !175, metadata !179}
!179 = metadata !{i32 46, i32 2, metadata !156, null}
!180 = metadata !{i32 790531, metadata !181, metadata !"stream<float>.V", null, i32 123, metadata !177, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!181 = metadata !{i32 786689, metadata !182, metadata !"this", metadata !33, i32 16777339, metadata !176, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!182 = metadata !{i32 786478, i32 0, metadata !32, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !33, i32 123, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !72, metadata !41, i32 123} ; [ DW_TAG_subprogram ]
!183 = metadata !{i32 123, i32 48, metadata !182, metadata !184}
!184 = metadata !{i32 102, i32 9, metadata !185, metadata !179}
!185 = metadata !{i32 786443, metadata !175, i32 101, i32 82, metadata !33, i32 10} ; [ DW_TAG_lexical_block ]
!186 = metadata !{i32 786688, metadata !187, metadata !"tmp", metadata !33, i32 124, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!187 = metadata !{i32 786443, metadata !182, i32 123, i32 73, metadata !33, i32 11} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 124, i32 22, metadata !187, metadata !184}
!189 = metadata !{i32 125, i32 9, metadata !187, metadata !184}
!190 = metadata !{i32 126, i32 9, metadata !187, metadata !184}
!191 = metadata !{i32 786688, metadata !156, metadata !"resultAmplitude", metadata !24, i32 37, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!192 = metadata !{i32 48, i32 2, metadata !156, null}
!193 = metadata !{i32 54, i32 2, metadata !156, null}
!194 = metadata !{i32 60, i32 2, metadata !156, null}
!195 = metadata !{i32 57, i32 3, metadata !196, null}
!196 = metadata !{i32 786443, metadata !156, i32 54, i32 10, metadata !24, i32 2} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 61, i32 3, metadata !198, null}
!198 = metadata !{i32 786443, metadata !156, i32 60, i32 27, metadata !24, i32 3} ; [ DW_TAG_lexical_block ]
!199 = metadata !{i32 64, i32 7, metadata !156, null}
!200 = metadata !{i32 65, i32 3, metadata !201, null}
!201 = metadata !{i32 786443, metadata !156, i32 64, i32 31, metadata !24, i32 4} ; [ DW_TAG_lexical_block ]
!202 = metadata !{i32 68, i32 7, metadata !156, null}
!203 = metadata !{i32 69, i32 3, metadata !204, null}
!204 = metadata !{i32 786443, metadata !156, i32 68, i32 30, metadata !24, i32 5} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 72, i32 7, metadata !156, null}
!206 = metadata !{i32 73, i32 3, metadata !207, null}
!207 = metadata !{i32 786443, metadata !156, i32 72, i32 29, metadata !24, i32 6} ; [ DW_TAG_lexical_block ]
!208 = metadata !{i32 145, i32 31, metadata !209, metadata !211}
!209 = metadata !{i32 786443, metadata !210, i32 144, i32 79, metadata !33, i32 9} ; [ DW_TAG_lexical_block ]
!210 = metadata !{i32 786478, i32 0, metadata !32, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !33, i32 144, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !79, metadata !41, i32 144} ; [ DW_TAG_subprogram ]
!211 = metadata !{i32 106, i32 9, metadata !212, metadata !214}
!212 = metadata !{i32 786443, metadata !213, i32 105, i32 88, metadata !33, i32 8} ; [ DW_TAG_lexical_block ]
!213 = metadata !{i32 786478, i32 0, metadata !32, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !33, i32 105, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !61, metadata !41, i32 105} ; [ DW_TAG_subprogram ]
!214 = metadata !{i32 83, i32 2, metadata !156, null}
!215 = metadata !{i32 81, i32 2, metadata !156, null}
!216 = metadata !{i32 790531, metadata !217, metadata !"stream<float>.V", null, i32 105, metadata !177, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!217 = metadata !{i32 786689, metadata !213, metadata !"this", metadata !33, i32 16777321, metadata !176, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!218 = metadata !{i32 105, i32 48, metadata !213, metadata !214}
!219 = metadata !{i32 790531, metadata !220, metadata !"stream<float>.V", null, i32 144, metadata !177, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!220 = metadata !{i32 786689, metadata !210, metadata !"this", metadata !33, i32 16777360, metadata !176, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!221 = metadata !{i32 144, i32 48, metadata !210, metadata !211}
!222 = metadata !{i32 786688, metadata !209, metadata !"tmp", metadata !33, i32 145, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!223 = metadata !{i32 145, i32 22, metadata !209, metadata !211}
!224 = metadata !{i32 146, i32 9, metadata !209, metadata !211}
!225 = metadata !{i32 55, i32 3, metadata !196, null}
!226 = metadata !{i32 49, i32 3, metadata !169, null}
!227 = metadata !{i32 84, i32 1, metadata !156, null}
