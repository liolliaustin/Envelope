; ModuleID = '/home/austin/ECE1373_GhostSynth/modules/Envelope/Envelope_RTL/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wait = internal unnamed_addr global i1 false     ; [#uses=2 type=i1*]
@time = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@sustainTime = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@releaseTime = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@releaseSlope = internal unnamed_addr global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)sustainTime" = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)releaseTime" = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)releaseSlope" = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)decaySlope" = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)attackSlope" = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@envelope.str = internal unnamed_addr constant [9 x i8] c"envelope\00" ; [#uses=1 type=[9 x i8]*]
@decaySlope = internal unnamed_addr global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@attackSlope = internal unnamed_addr global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@.str5 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=6 type=[9 x i8]*]
@.str4 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=6 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=2 type=[5 x i8]*]
@.str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=2 type=[5 x i8]*]
@.str1 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=46 type=[1 x i8]*]

; [#uses=25]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @envelope(float* %wave_in.V, float* %wave_out.V, i32 %press, i32 %attackDuration, i32 %decayDuration, i32 %sustainAmplitude, i32 %sustainDuration, i32 %releaseDuration) {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %wave_in.V), !map !104
  call void (...)* @_ssdm_op_SpecBitsMap(float* %wave_out.V), !map !110
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %press), !map !114
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %attackDuration), !map !120
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %decayDuration), !map !124
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %sustainAmplitude), !map !128
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %sustainDuration), !map !132
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %releaseDuration), !map !136
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @envelope.str) nounwind
  %tmp.24 = alloca float, align 4                 ; [#uses=2 type=float*]
  %tmp = alloca float, align 4                    ; [#uses=2 type=float*]
  call void @llvm.dbg.value(metadata !{float* %wave_in.V}, i64 0, metadata !140), !dbg !145 ; [debug line = 9:23] [debug variable = wave_in.V]
  call void @llvm.dbg.value(metadata !{float* %wave_out.V}, i64 0, metadata !146), !dbg !148 ; [debug line = 10:23] [debug variable = wave_out.V]
  call void @llvm.dbg.value(metadata !{i32 %press}, i64 0, metadata !149), !dbg !150 ; [debug line = 12:6] [debug variable = press]
  call void @llvm.dbg.value(metadata !{i32 %attackDuration}, i64 0, metadata !151), !dbg !152 ; [debug line = 13:6] [debug variable = attackDuration]
  call void @llvm.dbg.value(metadata !{i32 %decayDuration}, i64 0, metadata !153), !dbg !154 ; [debug line = 14:6] [debug variable = decayDuration]
  call void @llvm.dbg.value(metadata !{i32 %sustainAmplitude}, i64 0, metadata !155), !dbg !156 ; [debug line = 15:6] [debug variable = sustainAmplitude]
  call void @llvm.dbg.value(metadata !{i32 %sustainDuration}, i64 0, metadata !157), !dbg !158 ; [debug line = 16:6] [debug variable = sustainDuration]
  call void @llvm.dbg.value(metadata !{i32 %releaseDuration}, i64 0, metadata !159), !dbg !160 ; [debug line = 17:6] [debug variable = releaseDuration]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !161 ; [debug line = 22:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %wave_in.V, [5 x i8]* @.str2, i32 1, i32 1, [5 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !163 ; [debug line = 24:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %wave_out.V, [5 x i8]* @.str2, i32 1, i32 1, [5 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !164 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %press, [10 x i8]* @.str4, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str5, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !165 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %attackDuration, [10 x i8]* @.str4, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str5, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !166 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %decayDuration, [10 x i8]* @.str4, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str5, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !167 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %sustainAmplitude, [10 x i8]* @.str4, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str5, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !168 ; [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %sustainDuration, [10 x i8]* @.str4, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str5, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !169 ; [debug line = 31:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %releaseDuration, [10 x i8]* @.str4, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str5, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !170 ; [debug line = 32:1]
  %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)attackSlope.load" = load i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)attackSlope", align 1 ; [#uses=1 type=i1]
  br i1 %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)attackSlope.load", label %._crit_edge, label %codeRepl1, !dbg !171 ; [debug line = 35:52]

codeRepl1:                                        ; preds = %0
  %tmp.1.i = sitofp i32 %attackDuration to float, !dbg !171 ; [#uses=1 type=float] [debug line = 35:52]
  %tmp.2.i = fdiv float 2.000000e+00, %tmp.1.i, !dbg !171 ; [#uses=1 type=float] [debug line = 35:52]
  store float %tmp.2.i, float* @attackSlope, align 4, !dbg !171 ; [debug line = 35:52]
  store i1 true, i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)attackSlope", align 1, !dbg !171 ; [debug line = 35:52]
  br label %._crit_edge

._crit_edge:                                      ; preds = %codeRepl1, %0
  %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)decaySlope.load" = load i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)decaySlope", align 1 ; [#uses=1 type=i1]
  br i1 %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)decaySlope.load", label %._crit_edge5, label %codeRepl, !dbg !172 ; [debug line = 36:90]

codeRepl:                                         ; preds = %._crit_edge
  %tmp.4.i = add nsw i32 %sustainAmplitude, -2, !dbg !172 ; [#uses=1 type=i32] [debug line = 36:90]
  %tmp.5.i = sitofp i32 %tmp.4.i to float, !dbg !172 ; [#uses=1 type=float] [debug line = 36:90]
  %tmp.6.i = sub nsw i32 %decayDuration, %attackDuration, !dbg !172 ; [#uses=1 type=i32] [debug line = 36:90]
  %tmp.7.i = sitofp i32 %tmp.6.i to float, !dbg !172 ; [#uses=1 type=float] [debug line = 36:90]
  %tmp.8.i = fdiv float %tmp.5.i, %tmp.7.i, !dbg !172 ; [#uses=1 type=float] [debug line = 36:90]
  store float %tmp.8.i, float* @decaySlope, align 4, !dbg !172 ; [debug line = 36:90]
  store i1 true, i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)decaySlope", align 1, !dbg !172 ; [debug line = 36:90]
  br label %._crit_edge5

._crit_edge5:                                     ; preds = %codeRepl, %._crit_edge
  %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)releaseSlope.load" = load i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)releaseSlope", align 1 ; [#uses=1 type=i1]
  br i1 %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)releaseSlope.load", label %._crit_edge6, label %codeRepl2, !dbg !173 ; [debug line = 37:91]

codeRepl2:                                        ; preds = %._crit_edge5
  %tmp..i = sub nsw i32 0, %sustainAmplitude, !dbg !173 ; [#uses=1 type=i32] [debug line = 37:91]
  %tmp.10.i = sitofp i32 %tmp..i to float, !dbg !173 ; [#uses=1 type=float] [debug line = 37:91]
  %tmp.11.i = sub nsw i32 %releaseDuration, %sustainDuration, !dbg !173 ; [#uses=1 type=i32] [debug line = 37:91]
  %tmp.12.i = sitofp i32 %tmp.11.i to float, !dbg !173 ; [#uses=1 type=float] [debug line = 37:91]
  %tmp.13.i = fdiv float %tmp.10.i, %tmp.12.i, !dbg !173 ; [#uses=1 type=float] [debug line = 37:91]
  store float %tmp.13.i, float* @releaseSlope, align 4, !dbg !173 ; [debug line = 37:91]
  store i1 true, i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)releaseSlope", align 1, !dbg !173 ; [debug line = 37:91]
  br label %._crit_edge6

._crit_edge6:                                     ; preds = %codeRepl2, %._crit_edge5
  %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)releaseTime.load" = load i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)releaseTime", align 1 ; [#uses=1 type=i1]
  %releaseTime.load = load i32* @releaseTime, align 4, !dbg !174 ; [#uses=1 type=i32] [debug line = 54:3]
  br i1 %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)releaseTime.load", label %._crit_edge7, label %codeRepl3, !dbg !176 ; [debug line = 41:42]

codeRepl3:                                        ; preds = %._crit_edge6
  store i1 true, i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)releaseTime", align 1, !dbg !176 ; [debug line = 41:42]
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %codeRepl3, %._crit_edge6
  %releaseTime.flag = phi i1 [ true, %codeRepl3 ], [ false, %._crit_edge6 ] ; [#uses=1 type=i1]
  %releaseTime.loc = phi i32 [ %releaseDuration, %codeRepl3 ], [ %releaseTime.load, %._crit_edge6 ] ; [#uses=3 type=i32]
  %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)sustainTime.load" = load i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)sustainTime", align 1 ; [#uses=1 type=i1]
  %sustainTime.load = load i32* @sustainTime, align 4, !dbg !177 ; [#uses=1 type=i32] [debug line = 49:7]
  br i1 %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)sustainTime.load", label %._crit_edge8_ifconv, label %codeRepl4, !dbg !178 ; [debug line = 42:42]

codeRepl4:                                        ; preds = %._crit_edge7
  store i1 true, i1* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)sustainTime", align 1, !dbg !178 ; [debug line = 42:42]
  br label %._crit_edge8_ifconv

._crit_edge8_ifconv:                              ; preds = %codeRepl4, %._crit_edge7
  %sustainTime.flag = phi i1 [ true, %codeRepl4 ], [ false, %._crit_edge7 ] ; [#uses=1 type=i1]
  %sustainTime.loc = phi i32 [ %sustainDuration, %codeRepl4 ], [ %sustainTime.load, %._crit_edge7 ] ; [#uses=6 type=i32]
  call void @llvm.dbg.value(metadata !{float* %wave_in.V}, i64 0, metadata !179), !dbg !184 ; [debug line = 101:48@45:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %wave_in.V}, i64 0, metadata !186), !dbg !189 ; [debug line = 123:48@102:9@45:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp}, metadata !192) nounwind, !dbg !194 ; [debug line = 124:22@102:9@45:2] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.floatP.floatP(float* %wave_in.V, float* %tmp) nounwind, !dbg !195 ; [debug line = 125:9@102:9@45:2]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !192), !dbg !196 ; [debug line = 126:9@102:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !192), !dbg !196 ; [debug line = 126:9@102:9@45:2] [debug variable = tmp]
  %resultAmplitude = load float* %tmp, align 4, !dbg !196 ; [#uses=4 type=float] [debug line = 126:9@102:9@45:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude}, i64 0, metadata !197), !dbg !196 ; [debug line = 126:9@102:9@45:2] [debug variable = resultAmplitude]
  %tmp.4 = icmp eq i32 %press, 0, !dbg !198       ; [#uses=2 type=i1] [debug line = 47:2]
  %wait.load = load i1* @wait, align 1            ; [#uses=1 type=i1]
  %time.load = load i32* @time, align 4, !dbg !177 ; [#uses=3 type=i32] [debug line = 49:7]
  %tmp.5 = icmp slt i32 %time.load, %sustainTime.loc, !dbg !177 ; [#uses=1 type=i1] [debug line = 49:7]
  %sustainTime.loc.time.load = select i1 %tmp.5, i32 %sustainTime.loc, i32 %time.load, !dbg !177 ; [#uses=1 type=i32] [debug line = 49:7]
  %not.tmp.4 = xor i1 %tmp.4, true                ; [#uses=2 type=i1]
  %time.loc.1 = select i1 %tmp.4, i32 %sustainTime.loc.time.load, i32 %time.load ; [#uses=2 type=i32]
  %tmp.6 = icmp sgt i32 %press, 0, !dbg !199      ; [#uses=5 type=i1] [debug line = 52:2]
  %tmp.7 = add nsw i32 %sustainTime.loc, -1, !dbg !199 ; [#uses=1 type=i32] [debug line = 52:2]
  %tmp.8 = icmp eq i32 %time.loc.1, %tmp.7, !dbg !199 ; [#uses=1 type=i1] [debug line = 52:2]
  %tmp. = add nsw i32 %sustainTime.loc, 1, !dbg !200 ; [#uses=2 type=i32] [debug line = 53:3]
  %tmp.1 = add nsw i32 %releaseTime.loc, 1, !dbg !174 ; [#uses=2 type=i32] [debug line = 54:3]
  %sel_tmp1 = and i1 %tmp.6, %tmp.8               ; [#uses=6 type=i1]
  %releaseTime.flag.1 = or i1 %releaseTime.flag, %sel_tmp1 ; [#uses=1 type=i1]
  %sel_tmp5 = select i1 %sel_tmp1, i32 %tmp.1, i32 %releaseDuration ; [#uses=1 type=i32]
  %releaseTime.new.1 = select i1 %tmp.6, i32 %sel_tmp5, i32 %releaseDuration ; [#uses=1 type=i32]
  %sel_tmp9 = select i1 %sel_tmp1, i32 %tmp.1, i32 %releaseTime.loc ; [#uses=1 type=i32]
  %releaseTime.loc.1 = select i1 %tmp.6, i32 %sel_tmp9, i32 %releaseTime.loc ; [#uses=1 type=i32]
  %sustainTime.flag.1 = or i1 %sustainTime.flag, %sel_tmp1 ; [#uses=1 type=i1]
  %sel_tmp = select i1 %sel_tmp1, i32 %tmp., i32 %sustainDuration ; [#uses=1 type=i32]
  %sustainTime.new.1 = select i1 %tmp.6, i32 %sel_tmp, i32 %sustainDuration ; [#uses=1 type=i32]
  %sel_tmp2 = select i1 %sel_tmp1, i32 %tmp., i32 %sustainTime.loc ; [#uses=1 type=i32]
  %sustainTime.loc.1 = select i1 %tmp.6, i32 %sel_tmp2, i32 %sustainTime.loc ; [#uses=2 type=i32]
  %tmp.2 = xor i1 %wait.load, true, !dbg !201     ; [#uses=1 type=i1] [debug line = 57:2]
  %tmp.3 = or i1 %tmp.2, %not.tmp.4, !dbg !201    ; [#uses=1 type=i1] [debug line = 57:2]
  br i1 %sustainTime.flag.1, label %mergeST5, label %._crit_edge10.new6

mergeST:                                          ; preds = %._crit_edge10.new6
  store i32 %releaseTime.new.1, i32* @releaseTime, align 4, !dbg !176 ; [debug line = 41:42]
  br label %._crit_edge10.new_ifconv

._crit_edge10.new_ifconv:                         ; preds = %._crit_edge10.new6, %mergeST
  %time.loc.2 = select i1 %tmp.3, i32 %time.loc.1, i32 0, !dbg !201 ; [#uses=8 type=i32] [debug line = 57:2]
  %tmp.9 = icmp slt i32 %time.loc.2, %attackDuration, !dbg !202 ; [#uses=4 type=i1] [debug line = 61:2]
  %attackSlope.load = load float* @attackSlope, align 4, !dbg !203 ; [#uses=1 type=float] [debug line = 62:3]
  %tmp.10 = sitofp i32 %time.loc.2 to float, !dbg !203 ; [#uses=1 type=float] [debug line = 62:3]
  %tmp.11 = fmul float %attackSlope.load, %tmp.10, !dbg !203 ; [#uses=1 type=float] [debug line = 62:3]
  %resultAmplitude.1 = fmul float %resultAmplitude, %tmp.11, !dbg !203 ; [#uses=1 type=float] [debug line = 62:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.1}, i64 0, metadata !197), !dbg !203 ; [debug line = 62:3] [debug variable = resultAmplitude]
  %tmp.12 = icmp slt i32 %time.loc.2, %decayDuration, !dbg !205 ; [#uses=2 type=i1] [debug line = 65:7]
  %decaySlope.load = load float* @decaySlope, align 4, !dbg !206 ; [#uses=1 type=float] [debug line = 66:3]
  %tmp.13 = sub nsw i32 %time.loc.2, %attackDuration, !dbg !206 ; [#uses=1 type=i32] [debug line = 66:3]
  %tmp.14 = sitofp i32 %tmp.13 to float, !dbg !206 ; [#uses=1 type=float] [debug line = 66:3]
  %tmp.15 = fmul float %decaySlope.load, %tmp.14, !dbg !206 ; [#uses=1 type=float] [debug line = 66:3]
  %tmp.16 = fadd float %tmp.15, 2.000000e+00, !dbg !206 ; [#uses=1 type=float] [debug line = 66:3]
  %resultAmplitude.2 = fmul float %resultAmplitude, %tmp.16, !dbg !206 ; [#uses=1 type=float] [debug line = 66:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.2}, i64 0, metadata !197), !dbg !206 ; [debug line = 66:3] [debug variable = resultAmplitude]
  %tmp.17 = icmp slt i32 %time.loc.2, %sustainTime.loc.1, !dbg !208 ; [#uses=3 type=i1] [debug line = 69:7]
  %tmp.18 = sitofp i32 %sustainAmplitude to float, !dbg !209 ; [#uses=2 type=float] [debug line = 70:3]
  %resultAmplitude.3 = fmul float %resultAmplitude, %tmp.18, !dbg !209 ; [#uses=1 type=float] [debug line = 70:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.3}, i64 0, metadata !197), !dbg !209 ; [debug line = 70:3] [debug variable = resultAmplitude]
  %tmp.19 = icmp slt i32 %time.loc.2, %releaseTime.loc.1, !dbg !211 ; [#uses=2 type=i1] [debug line = 73:7]
  %releaseSlope.load = load float* @releaseSlope, align 4, !dbg !212 ; [#uses=1 type=float] [debug line = 74:3]
  %tmp.20 = sub nsw i32 %time.loc.2, %sustainTime.loc.1, !dbg !212 ; [#uses=1 type=i32] [debug line = 74:3]
  %tmp.21 = sitofp i32 %tmp.20 to float, !dbg !212 ; [#uses=1 type=float] [debug line = 74:3]
  %tmp.22 = fmul float %releaseSlope.load, %tmp.21, !dbg !212 ; [#uses=1 type=float] [debug line = 74:3]
  %tmp.23 = fadd float %tmp.22, %tmp.18, !dbg !212 ; [#uses=1 type=float] [debug line = 74:3]
  %resultAmplitude.4 = fmul float %resultAmplitude, %tmp.23, !dbg !212 ; [#uses=1 type=float] [debug line = 74:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.4}, i64 0, metadata !197), !dbg !212 ; [debug line = 74:3] [debug variable = resultAmplitude]
  %not.tmp. = xor i1 %tmp.9, true                 ; [#uses=2 type=i1]
  %sel_tmp3 = and i1 %tmp.12, %not.tmp.           ; [#uses=3 type=i1]
  %sel_tmp4 = xor i1 %sel_tmp3, %not.tmp.         ; [#uses=1 type=i1]
  %sel_tmp30.demorgan = or i1 %tmp.9, %tmp.12     ; [#uses=3 type=i1]
  %tmp.21.not = xor i1 %tmp.17, true              ; [#uses=1 type=i1]
  %not.sel_tmp = or i1 %sel_tmp30.demorgan, %tmp.21.not ; [#uses=1 type=i1]
  %sel_tmp37.demorgan = or i1 %sel_tmp30.demorgan, %tmp.17 ; [#uses=2 type=i1]
  %tmp.23.not = xor i1 %tmp.19, true              ; [#uses=1 type=i1]
  %not.sel_tmp1 = or i1 %sel_tmp37.demorgan, %tmp.23.not ; [#uses=1 type=i1]
  %tmp1 = and i1 %not.sel_tmp, %not.sel_tmp1      ; [#uses=1 type=i1]
  %sel_tmp6 = and i1 %tmp1, %sel_tmp4             ; [#uses=1 type=i1]
  %wait.flag.1 = or i1 %sel_tmp6, %not.tmp.4      ; [#uses=1 type=i1]
  %sel_tmp7 = xor i1 %sel_tmp30.demorgan, true    ; [#uses=1 type=i1]
  %sel_tmp8 = and i1 %tmp.17, %sel_tmp7           ; [#uses=2 type=i1]
  %sel_tmp10 = xor i1 %sel_tmp37.demorgan, true   ; [#uses=1 type=i1]
  %sel_tmp11 = and i1 %tmp.19, %sel_tmp10         ; [#uses=2 type=i1]
  %or_cond = or i1 %sel_tmp11, %sel_tmp8          ; [#uses=1 type=i1]
  %or_cond1 = or i1 %sel_tmp3, %tmp.9             ; [#uses=1 type=i1]
  %or_cond2 = or i1 %or_cond, %or_cond1           ; [#uses=1 type=i1]
  %not.or_cond = xor i1 %or_cond2, true           ; [#uses=1 type=i1]
  %resultAmplitude.5 = select i1 %tmp.9, float %resultAmplitude.1, float 0.000000e+00, !dbg !214 ; [#uses=1 type=float] [debug line = 145:31@106:9@84:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.5}, i64 0, metadata !197), !dbg !206 ; [debug line = 66:3] [debug variable = resultAmplitude]
  %resultAmplitude.6 = select i1 %sel_tmp3, float %resultAmplitude.2, float %resultAmplitude.5, !dbg !214 ; [#uses=1 type=float] [debug line = 145:31@106:9@84:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.6}, i64 0, metadata !197), !dbg !206 ; [debug line = 66:3] [debug variable = resultAmplitude]
  %resultAmplitude.7 = select i1 %sel_tmp8, float %resultAmplitude.3, float %resultAmplitude.6, !dbg !214 ; [#uses=1 type=float] [debug line = 145:31@106:9@84:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.7}, i64 0, metadata !197), !dbg !206 ; [debug line = 66:3] [debug variable = resultAmplitude]
  %resultAmplitude.9 = select i1 %sel_tmp11, float %resultAmplitude.4, float %resultAmplitude.7, !dbg !214 ; [#uses=1 type=float] [debug line = 145:31@106:9@84:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.9}, i64 0, metadata !197), !dbg !206 ; [debug line = 66:3] [debug variable = resultAmplitude]
  %tmp.25 = add nsw i32 %time.loc.2, 1, !dbg !221 ; [#uses=1 type=i32] [debug line = 82:2]
  call void @llvm.dbg.value(metadata !{float* %wave_out.V}, i64 0, metadata !222), !dbg !224 ; [debug line = 105:48@84:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %wave_out.V}, i64 0, metadata !225), !dbg !227 ; [debug line = 144:48@106:9@84:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp.24}, metadata !228) nounwind, !dbg !229 ; [debug line = 145:22@106:9@84:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.9}, i64 0, metadata !228), !dbg !214 ; [debug line = 145:31@106:9@84:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.9}, i64 0, metadata !228), !dbg !214 ; [debug line = 145:31@106:9@84:2] [debug variable = tmp]
  store float %resultAmplitude.9, float* %tmp.24, align 4, !dbg !214 ; [debug line = 145:31@106:9@84:2]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %wave_out.V, float* %tmp.24) nounwind, !dbg !230 ; [debug line = 146:9@106:9@84:2]
  store i32 %tmp.25, i32* @time, align 4, !dbg !231 ; [debug line = 50:3]
  br i1 %wait.flag.1, label %mergeST7, label %.new

mergeST5:                                         ; preds = %._crit_edge8_ifconv
  store i32 %sustainTime.new.1, i32* @sustainTime, align 4, !dbg !178 ; [debug line = 42:42]
  br label %._crit_edge10.new6

._crit_edge10.new6:                               ; preds = %mergeST5, %._crit_edge8_ifconv
  br i1 %releaseTime.flag.1, label %mergeST, label %._crit_edge10.new_ifconv

mergeST7:                                         ; preds = %._crit_edge10.new_ifconv
  store i1 %not.or_cond, i1* @wait, align 1, !dbg !232 ; [debug line = 48:3]
  br label %.new

.new:                                             ; preds = %mergeST7, %._crit_edge10.new_ifconv
  ret void, !dbg !233                             ; [debug line = 85:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=9]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=8]
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
!20 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope/Envelope_RTL/solution1/.autopilot/db/Envelope.pragma.2.cpp", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !21} ; [ DW_TAG_compile_unit ]
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !23, metadata !26, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !97, metadata !98, metadata !99, metadata !101, metadata !102}
!23 = metadata !{i32 786484, i32 0, null, metadata !"wait", metadata !"wait", metadata !"wait", metadata !24, i32 43, metadata !25, i32 1, i32 1, i1* @wait} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786473, metadata !"src/Envelope.cpp", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!25 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!26 = metadata !{i32 786484, i32 0, metadata !27, metadata !"decaySlope", metadata !"decaySlope", metadata !"", metadata !24, i32 36, metadata !36, i32 1, i32 1, float* @decaySlope} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786478, i32 0, metadata !24, metadata !"envelope", metadata !"envelope", metadata !"_Z8envelopeRN3hls6streamIfEES2_iiiiii", metadata !24, i32 7, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !41, i32 19} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!29 = metadata !{null, metadata !30, metadata !30, metadata !25, metadata !25, metadata !25, metadata !25, metadata !25, metadata !25}
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
!89 = metadata !{i32 786484, i32 0, metadata !27, metadata !"attackSlope", metadata !"attackSlope", metadata !"", metadata !24, i32 35, metadata !36, i32 1, i32 1, float* @attackSlope} ; [ DW_TAG_variable ]
!90 = metadata !{i32 786484, i32 0, metadata !27, metadata !"releaseSlope", metadata !"releaseSlope", metadata !"", metadata !24, i32 37, metadata !36, i32 1, i32 1, float* @releaseSlope} ; [ DW_TAG_variable ]
!91 = metadata !{i32 786484, i32 0, metadata !27, metadata !"time", metadata !"time", metadata !"", metadata !24, i32 34, metadata !25, i32 1, i32 1, i32* @time} ; [ DW_TAG_variable ]
!92 = metadata !{i32 786484, i32 0, metadata !27, metadata !"sustainTime", metadata !"sustainTime", metadata !"", metadata !24, i32 42, metadata !25, i32 1, i32 1, i32* @sustainTime} ; [ DW_TAG_variable ]
!93 = metadata !{i32 786484, i32 0, metadata !27, metadata !"releaseTime", metadata !"releaseTime", metadata !"", metadata !24, i32 41, metadata !25, i32 1, i32 1, i32* @releaseTime} ; [ DW_TAG_variable ]
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
!131 = metadata !{metadata !"sustainAmplitude", metadata !118, metadata !"int", i32 0, i32 31}
!132 = metadata !{metadata !133}
!133 = metadata !{i32 0, i32 31, metadata !134}
!134 = metadata !{metadata !135}
!135 = metadata !{metadata !"sustainDuration", metadata !118, metadata !"int", i32 0, i32 31}
!136 = metadata !{metadata !137}
!137 = metadata !{i32 0, i32 31, metadata !138}
!138 = metadata !{metadata !139}
!139 = metadata !{metadata !"releaseDuration", metadata !118, metadata !"int", i32 0, i32 31}
!140 = metadata !{i32 790531, metadata !141, metadata !"wave_in.V", null, i32 9, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!141 = metadata !{i32 786689, metadata !27, metadata !"wave_in", metadata !24, i32 16777225, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!142 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_pointer_type ]
!143 = metadata !{i32 786438, metadata !32, metadata !"stream<float>", metadata !33, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !144, i32 0, null, metadata !87} ; [ DW_TAG_class_field_type ]
!144 = metadata !{metadata !35}
!145 = metadata !{i32 9, i32 23, metadata !27, null}
!146 = metadata !{i32 790531, metadata !147, metadata !"wave_out.V", null, i32 10, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!147 = metadata !{i32 786689, metadata !27, metadata !"wave_out", metadata !24, i32 33554442, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!148 = metadata !{i32 10, i32 23, metadata !27, null}
!149 = metadata !{i32 786689, metadata !27, metadata !"press", metadata !24, i32 50331660, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!150 = metadata !{i32 12, i32 6, metadata !27, null}
!151 = metadata !{i32 786689, metadata !27, metadata !"attackDuration", metadata !24, i32 67108877, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!152 = metadata !{i32 13, i32 6, metadata !27, null}
!153 = metadata !{i32 786689, metadata !27, metadata !"decayDuration", metadata !24, i32 83886094, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!154 = metadata !{i32 14, i32 6, metadata !27, null}
!155 = metadata !{i32 786689, metadata !27, metadata !"sustainAmplitude", metadata !24, i32 100663311, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!156 = metadata !{i32 15, i32 6, metadata !27, null}
!157 = metadata !{i32 786689, metadata !27, metadata !"sustainDuration", metadata !24, i32 117440528, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!158 = metadata !{i32 16, i32 6, metadata !27, null}
!159 = metadata !{i32 786689, metadata !27, metadata !"releaseDuration", metadata !24, i32 134217745, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!160 = metadata !{i32 17, i32 6, metadata !27, null}
!161 = metadata !{i32 22, i32 1, metadata !162, null}
!162 = metadata !{i32 786443, metadata !27, i32 19, i32 2, metadata !24, i32 0} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 24, i32 1, metadata !162, null}
!164 = metadata !{i32 25, i32 1, metadata !162, null}
!165 = metadata !{i32 27, i32 1, metadata !162, null}
!166 = metadata !{i32 28, i32 1, metadata !162, null}
!167 = metadata !{i32 29, i32 1, metadata !162, null}
!168 = metadata !{i32 30, i32 1, metadata !162, null}
!169 = metadata !{i32 31, i32 1, metadata !162, null}
!170 = metadata !{i32 32, i32 1, metadata !162, null}
!171 = metadata !{i32 35, i32 52, metadata !162, null}
!172 = metadata !{i32 36, i32 90, metadata !162, null}
!173 = metadata !{i32 37, i32 91, metadata !162, null}
!174 = metadata !{i32 54, i32 3, metadata !175, null}
!175 = metadata !{i32 786443, metadata !162, i32 52, i32 43, metadata !24, i32 1} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 41, i32 42, metadata !162, null}
!177 = metadata !{i32 49, i32 7, metadata !162, null}
!178 = metadata !{i32 42, i32 42, metadata !162, null}
!179 = metadata !{i32 790531, metadata !180, metadata !"stream<float>.V", null, i32 101, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!180 = metadata !{i32 786689, metadata !181, metadata !"this", metadata !33, i32 16777317, metadata !182, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!181 = metadata !{i32 786478, i32 0, metadata !32, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !33, i32 101, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !57, metadata !41, i32 101} ; [ DW_TAG_subprogram ]
!182 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ]
!183 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !143} ; [ DW_TAG_pointer_type ]
!184 = metadata !{i32 101, i32 48, metadata !181, metadata !185}
!185 = metadata !{i32 45, i32 2, metadata !162, null}
!186 = metadata !{i32 790531, metadata !187, metadata !"stream<float>.V", null, i32 123, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!187 = metadata !{i32 786689, metadata !188, metadata !"this", metadata !33, i32 16777339, metadata !182, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!188 = metadata !{i32 786478, i32 0, metadata !32, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !33, i32 123, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !72, metadata !41, i32 123} ; [ DW_TAG_subprogram ]
!189 = metadata !{i32 123, i32 48, metadata !188, metadata !190}
!190 = metadata !{i32 102, i32 9, metadata !191, metadata !185}
!191 = metadata !{i32 786443, metadata !181, i32 101, i32 82, metadata !33, i32 10} ; [ DW_TAG_lexical_block ]
!192 = metadata !{i32 786688, metadata !193, metadata !"tmp", metadata !33, i32 124, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!193 = metadata !{i32 786443, metadata !188, i32 123, i32 73, metadata !33, i32 11} ; [ DW_TAG_lexical_block ]
!194 = metadata !{i32 124, i32 22, metadata !193, metadata !190}
!195 = metadata !{i32 125, i32 9, metadata !193, metadata !190}
!196 = metadata !{i32 126, i32 9, metadata !193, metadata !190}
!197 = metadata !{i32 786688, metadata !162, metadata !"resultAmplitude", metadata !24, i32 39, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!198 = metadata !{i32 47, i32 2, metadata !162, null}
!199 = metadata !{i32 52, i32 2, metadata !162, null}
!200 = metadata !{i32 53, i32 3, metadata !175, null}
!201 = metadata !{i32 57, i32 2, metadata !162, null}
!202 = metadata !{i32 61, i32 2, metadata !162, null}
!203 = metadata !{i32 62, i32 3, metadata !204, null}
!204 = metadata !{i32 786443, metadata !162, i32 61, i32 27, metadata !24, i32 3} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 65, i32 7, metadata !162, null}
!206 = metadata !{i32 66, i32 3, metadata !207, null}
!207 = metadata !{i32 786443, metadata !162, i32 65, i32 31, metadata !24, i32 4} ; [ DW_TAG_lexical_block ]
!208 = metadata !{i32 69, i32 7, metadata !162, null}
!209 = metadata !{i32 70, i32 3, metadata !210, null}
!210 = metadata !{i32 786443, metadata !162, i32 69, i32 30, metadata !24, i32 5} ; [ DW_TAG_lexical_block ]
!211 = metadata !{i32 73, i32 7, metadata !162, null}
!212 = metadata !{i32 74, i32 3, metadata !213, null}
!213 = metadata !{i32 786443, metadata !162, i32 73, i32 29, metadata !24, i32 6} ; [ DW_TAG_lexical_block ]
!214 = metadata !{i32 145, i32 31, metadata !215, metadata !217}
!215 = metadata !{i32 786443, metadata !216, i32 144, i32 79, metadata !33, i32 9} ; [ DW_TAG_lexical_block ]
!216 = metadata !{i32 786478, i32 0, metadata !32, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !33, i32 144, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !79, metadata !41, i32 144} ; [ DW_TAG_subprogram ]
!217 = metadata !{i32 106, i32 9, metadata !218, metadata !220}
!218 = metadata !{i32 786443, metadata !219, i32 105, i32 88, metadata !33, i32 8} ; [ DW_TAG_lexical_block ]
!219 = metadata !{i32 786478, i32 0, metadata !32, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !33, i32 105, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !61, metadata !41, i32 105} ; [ DW_TAG_subprogram ]
!220 = metadata !{i32 84, i32 2, metadata !162, null}
!221 = metadata !{i32 82, i32 2, metadata !162, null}
!222 = metadata !{i32 790531, metadata !223, metadata !"stream<float>.V", null, i32 105, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!223 = metadata !{i32 786689, metadata !219, metadata !"this", metadata !33, i32 16777321, metadata !182, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!224 = metadata !{i32 105, i32 48, metadata !219, metadata !220}
!225 = metadata !{i32 790531, metadata !226, metadata !"stream<float>.V", null, i32 144, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!226 = metadata !{i32 786689, metadata !216, metadata !"this", metadata !33, i32 16777360, metadata !182, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!227 = metadata !{i32 144, i32 48, metadata !216, metadata !217}
!228 = metadata !{i32 786688, metadata !215, metadata !"tmp", metadata !33, i32 145, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!229 = metadata !{i32 145, i32 22, metadata !215, metadata !217}
!230 = metadata !{i32 146, i32 9, metadata !215, metadata !217}
!231 = metadata !{i32 50, i32 3, metadata !162, null}
!232 = metadata !{i32 48, i32 3, metadata !162, null}
!233 = metadata !{i32 85, i32 1, metadata !162, null}
