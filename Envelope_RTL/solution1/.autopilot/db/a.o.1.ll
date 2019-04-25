; ModuleID = '/home/austin/ECE1373_GhostSynth/modules/Envelope/Envelope_RTL/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.hls::stream.0" = type { float }

@wait = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@time = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@sustainTime = internal unnamed_addr global i32 0, align 4 ; [#uses=4 type=i32*]
@releaseTime = internal unnamed_addr global i32 0, align 4 ; [#uses=4 type=i32*]
@releaseSlope = internal unnamed_addr global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)sustainTime" = internal unnamed_addr global i8 0 ; [#uses=2 type=i8*]
@"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)releaseTime" = internal unnamed_addr global i8 0 ; [#uses=2 type=i8*]
@"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)releaseSlope" = internal unnamed_addr global i8 0 ; [#uses=2 type=i8*]
@"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)decaySlope" = internal unnamed_addr global i8 0 ; [#uses=2 type=i8*]
@"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)attackSlope" = internal unnamed_addr global i8 0 ; [#uses=2 type=i8*]
@envelope.str = internal unnamed_addr constant [9 x i8] c"envelope\00" ; [#uses=1 type=[9 x i8]*]
@decaySlope = internal unnamed_addr global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@attackSlope = internal unnamed_addr global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@.str5 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str4 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str1 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=39]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @envelope(%"class.hls::stream.0"* %wave_in, %"class.hls::stream.0"* %wave_out, i32 %press, i32 %attackDuration, i32 %decayDuration, i32 %sustainAmplitude, i32 %sustainDuration, i32 %releaseDuration) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @envelope.str) nounwind
  %tmp.46 = alloca float, align 4                 ; [#uses=2 type=float*]
  %tmp.17 = alloca float, align 4                 ; [#uses=2 type=float*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %wave_in}, i64 0, metadata !112), !dbg !113 ; [debug line = 9:23] [debug variable = wave_in]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %wave_out}, i64 0, metadata !114), !dbg !115 ; [debug line = 10:23] [debug variable = wave_out]
  call void @llvm.dbg.value(metadata !{i32 %press}, i64 0, metadata !116), !dbg !117 ; [debug line = 12:6] [debug variable = press]
  call void @llvm.dbg.value(metadata !{i32 %attackDuration}, i64 0, metadata !118), !dbg !119 ; [debug line = 13:6] [debug variable = attackDuration]
  call void @llvm.dbg.value(metadata !{i32 %decayDuration}, i64 0, metadata !120), !dbg !121 ; [debug line = 14:6] [debug variable = decayDuration]
  call void @llvm.dbg.value(metadata !{i32 %sustainAmplitude}, i64 0, metadata !122), !dbg !123 ; [debug line = 15:6] [debug variable = sustainAmplitude]
  call void @llvm.dbg.value(metadata !{i32 %sustainDuration}, i64 0, metadata !124), !dbg !125 ; [debug line = 16:6] [debug variable = sustainDuration]
  call void @llvm.dbg.value(metadata !{i32 %releaseDuration}, i64 0, metadata !126), !dbg !127 ; [debug line = 17:6] [debug variable = releaseDuration]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([13 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !128 ; [debug line = 22:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream.0"* %wave_in, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !130 ; [debug line = 24:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream.0"* %wave_out, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !131 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %press, i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !132 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %attackDuration, i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !133 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %decayDuration, i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !134 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %sustainAmplitude, i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !135 ; [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %sustainDuration, i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !136 ; [debug line = 31:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %releaseDuration, i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !137 ; [debug line = 32:1]
  %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)attackSlope.load" = load i8* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)attackSlope", align 1, !dbg !138 ; [#uses=1 type=i8] [debug line = 35:52]
  %tmp = icmp eq i8 %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)attackSlope.load", 0, !dbg !138 ; [#uses=1 type=i1] [debug line = 35:52]
  br i1 %tmp, label %codeRepl, label %._crit_edge, !dbg !138 ; [debug line = 35:52]

codeRepl:                                         ; preds = %0
  %tmp.1 = sitofp i32 %attackDuration to float, !dbg !138 ; [#uses=1 type=float] [debug line = 35:52]
  %tmp.2 = fdiv float 2.000000e+00, %tmp.1, !dbg !138 ; [#uses=1 type=float] [debug line = 35:52]
  store float %tmp.2, float* @attackSlope, align 4, !dbg !138 ; [debug line = 35:52]
  store i8 1, i8* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)attackSlope", align 1, !dbg !138 ; [debug line = 35:52]
  br label %._crit_edge

._crit_edge:                                      ; preds = %codeRepl, %0
  %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)decaySlope.load" = load i8* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)decaySlope", align 1, !dbg !139 ; [#uses=1 type=i8] [debug line = 36:90]
  %tmp.3 = icmp eq i8 %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)decaySlope.load", 0, !dbg !139 ; [#uses=1 type=i1] [debug line = 36:90]
  br i1 %tmp.3, label %codeRepl13, label %._crit_edge6, !dbg !139 ; [debug line = 36:90]

codeRepl13:                                       ; preds = %._crit_edge
  %tmp.4 = add nsw i32 %sustainAmplitude, -2, !dbg !139 ; [#uses=1 type=i32] [debug line = 36:90]
  %tmp.5 = sitofp i32 %tmp.4 to float, !dbg !139  ; [#uses=1 type=float] [debug line = 36:90]
  %tmp.6 = sub nsw i32 %decayDuration, %attackDuration, !dbg !139 ; [#uses=1 type=i32] [debug line = 36:90]
  %tmp.7 = sitofp i32 %tmp.6 to float, !dbg !139  ; [#uses=1 type=float] [debug line = 36:90]
  %tmp.8 = fdiv float %tmp.5, %tmp.7, !dbg !139   ; [#uses=1 type=float] [debug line = 36:90]
  store float %tmp.8, float* @decaySlope, align 4, !dbg !139 ; [debug line = 36:90]
  store i8 1, i8* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)decaySlope", align 1, !dbg !139 ; [debug line = 36:90]
  br label %._crit_edge6

._crit_edge6:                                     ; preds = %codeRepl13, %._crit_edge
  %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)releaseSlope.load" = load i8* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)releaseSlope", align 1, !dbg !140 ; [#uses=1 type=i8] [debug line = 37:91]
  %tmp.9 = icmp eq i8 %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)releaseSlope.load", 0, !dbg !140 ; [#uses=1 type=i1] [debug line = 37:91]
  br i1 %tmp.9, label %codeRepl14, label %._crit_edge7, !dbg !140 ; [debug line = 37:91]

codeRepl14:                                       ; preds = %._crit_edge6
  %tmp.10 = sub nsw i32 0, %sustainAmplitude, !dbg !140 ; [#uses=1 type=i32] [debug line = 37:91]
  %tmp.11 = sitofp i32 %tmp.10 to float, !dbg !140 ; [#uses=1 type=float] [debug line = 37:91]
  %tmp.12 = sub nsw i32 %releaseDuration, %sustainDuration, !dbg !140 ; [#uses=1 type=i32] [debug line = 37:91]
  %tmp.13 = sitofp i32 %tmp.12 to float, !dbg !140 ; [#uses=1 type=float] [debug line = 37:91]
  %tmp.14 = fdiv float %tmp.11, %tmp.13, !dbg !140 ; [#uses=1 type=float] [debug line = 37:91]
  store float %tmp.14, float* @releaseSlope, align 4, !dbg !140 ; [debug line = 37:91]
  store i8 1, i8* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)releaseSlope", align 1, !dbg !140 ; [debug line = 37:91]
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %codeRepl14, %._crit_edge6
  %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)releaseTime.load" = load i8* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)releaseTime", align 1, !dbg !141 ; [#uses=1 type=i8] [debug line = 41:42]
  %tmp.15 = icmp eq i8 %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)releaseTime.load", 0, !dbg !141 ; [#uses=1 type=i1] [debug line = 41:42]
  br i1 %tmp.15, label %codeRepl15, label %._crit_edge8, !dbg !141 ; [debug line = 41:42]

codeRepl15:                                       ; preds = %._crit_edge7
  store i32 %releaseDuration, i32* @releaseTime, align 4, !dbg !141 ; [debug line = 41:42]
  store i8 1, i8* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)releaseTime", align 1, !dbg !141 ; [debug line = 41:42]
  br label %._crit_edge8

._crit_edge8:                                     ; preds = %codeRepl15, %._crit_edge7
  %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)sustainTime.load" = load i8* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)sustainTime", align 1, !dbg !142 ; [#uses=1 type=i8] [debug line = 42:42]
  %tmp.16 = icmp eq i8 %"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)sustainTime.load", 0, !dbg !142 ; [#uses=1 type=i1] [debug line = 42:42]
  br i1 %tmp.16, label %codeRepl16, label %._crit_edge9, !dbg !142 ; [debug line = 42:42]

codeRepl16:                                       ; preds = %._crit_edge8
  store i32 %sustainDuration, i32* @sustainTime, align 4, !dbg !142 ; [debug line = 42:42]
  store i8 1, i8* @"guard variable for envelope(stream<float>&, stream<float>&, int, int, int, int, int, int)sustainTime", align 1, !dbg !142 ; [debug line = 42:42]
  br label %._crit_edge9

._crit_edge9:                                     ; preds = %codeRepl16, %._crit_edge8
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %wave_in}, i64 0, metadata !143), !dbg !145 ; [debug line = 101:48@45:2] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %wave_in}, i64 0, metadata !147), !dbg !148 ; [debug line = 123:48@102:9@45:2] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{float* %tmp.17}, metadata !151) nounwind, !dbg !153 ; [debug line = 124:22@102:9@45:2] [debug variable = tmp]
  %wave_in.addr = getelementptr inbounds %"class.hls::stream.0"* %wave_in, i64 0, i32 0, !dbg !154 ; [#uses=1 type=float*] [debug line = 125:9@102:9@45:2]
  call void @_ssdm_op_IfRead.Stream.floatP.floatP(float* %wave_in.addr, float* %tmp.17) nounwind, !dbg !154 ; [debug line = 125:9@102:9@45:2]
  call void @llvm.dbg.value(metadata !{float* %tmp.17}, i64 0, metadata !151), !dbg !155 ; [debug line = 126:9@102:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.17}, i64 0, metadata !151), !dbg !155 ; [debug line = 126:9@102:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.17}, i64 0, metadata !151), !dbg !155 ; [debug line = 126:9@102:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.17}, i64 0, metadata !151), !dbg !155 ; [debug line = 126:9@102:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.17}, i64 0, metadata !151), !dbg !155 ; [debug line = 126:9@102:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.17}, i64 0, metadata !151), !dbg !155 ; [debug line = 126:9@102:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.17}, i64 0, metadata !151), !dbg !155 ; [debug line = 126:9@102:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.17}, i64 0, metadata !151), !dbg !155 ; [debug line = 126:9@102:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.17}, i64 0, metadata !151), !dbg !155 ; [debug line = 126:9@102:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.17}, i64 0, metadata !151), !dbg !155 ; [debug line = 126:9@102:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.17}, i64 0, metadata !151), !dbg !155 ; [debug line = 126:9@102:9@45:2] [debug variable = tmp]
  %resultAmplitude = load float* %tmp.17, align 4, !dbg !155 ; [#uses=4 type=float] [debug line = 126:9@102:9@45:2]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude}, i64 0, metadata !156), !dbg !155 ; [debug line = 126:9@102:9@45:2] [debug variable = resultAmplitude]
  %tmp.18 = icmp eq i32 %press, 0, !dbg !157      ; [#uses=1 type=i1] [debug line = 47:2]
  br i1 %tmp.18, label %._crit_edge10, label %1, !dbg !157 ; [debug line = 47:2]

; <label>:1                                       ; preds = %._crit_edge9
  store i32 0, i32* @wait, align 4, !dbg !158     ; [debug line = 48:3]
  br label %._crit_edge10, !dbg !158              ; [debug line = 48:3]

._crit_edge10:                                    ; preds = %1, %._crit_edge9
  %tmp.19 = icmp sgt i32 %press, 0, !dbg !159     ; [#uses=1 type=i1] [debug line = 50:2]
  %time.load = load i32* @time, align 4, !dbg !159 ; [#uses=2 type=i32] [debug line = 50:2]
  %tmp.20 = icmp sgt i32 %time.load, %decayDuration, !dbg !159 ; [#uses=1 type=i1] [debug line = 50:2]
  %or.cond = and i1 %tmp.19, %tmp.20, !dbg !159   ; [#uses=1 type=i1] [debug line = 50:2]
  br i1 %or.cond, label %2, label %._crit_edge11, !dbg !159 ; [debug line = 50:2]

; <label>:2                                       ; preds = %._crit_edge10
  %sustainTime.load = load i32* @sustainTime, align 4, !dbg !160 ; [#uses=1 type=i32] [debug line = 51:3]
  %tmp.21 = add nsw i32 %sustainTime.load, 1, !dbg !160 ; [#uses=1 type=i32] [debug line = 51:3]
  store i32 %tmp.21, i32* @sustainTime, align 4, !dbg !160 ; [debug line = 51:3]
  %releaseTime.load = load i32* @releaseTime, align 4, !dbg !162 ; [#uses=1 type=i32] [debug line = 52:3]
  %tmp.22 = add nsw i32 %releaseTime.load, 1, !dbg !162 ; [#uses=1 type=i32] [debug line = 52:3]
  store i32 %tmp.22, i32* @releaseTime, align 4, !dbg !162 ; [debug line = 52:3]
  br label %._crit_edge11, !dbg !163              ; [debug line = 53:2]

._crit_edge11:                                    ; preds = %2, %._crit_edge10
  %wait.load = load i32* @wait, align 4, !dbg !164 ; [#uses=1 type=i32] [debug line = 55:2]
  %tmp.23 = icmp eq i32 %wait.load, 0, !dbg !164  ; [#uses=1 type=i1] [debug line = 55:2]
  br i1 %tmp.23, label %._crit_edge12, label %3, !dbg !164 ; [debug line = 55:2]

; <label>:3                                       ; preds = %._crit_edge11
  store i32 0, i32* @time, align 4, !dbg !165     ; [debug line = 56:3]
  br label %._crit_edge12, !dbg !167              ; [debug line = 57:2]

._crit_edge12:                                    ; preds = %3, %._crit_edge11
  %tmp.24 = phi i32 [ 0, %3 ], [ %time.load, %._crit_edge11 ] ; [#uses=8 type=i32]
  %tmp.25 = icmp slt i32 %tmp.24, %attackDuration, !dbg !168 ; [#uses=1 type=i1] [debug line = 59:2]
  br i1 %tmp.25, label %4, label %5, !dbg !168    ; [debug line = 59:2]

; <label>:4                                       ; preds = %._crit_edge12
  %attackSlope.load = load float* @attackSlope, align 4, !dbg !169 ; [#uses=1 type=float] [debug line = 60:3]
  %tmp.26 = sitofp i32 %tmp.24 to float, !dbg !169 ; [#uses=1 type=float] [debug line = 60:3]
  %tmp.27 = fmul float %attackSlope.load, %tmp.26, !dbg !169 ; [#uses=1 type=float] [debug line = 60:3]
  %resultAmplitude.1 = fmul float %resultAmplitude, %tmp.27, !dbg !169 ; [#uses=1 type=float] [debug line = 60:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.1}, i64 0, metadata !156), !dbg !169 ; [debug line = 60:3] [debug variable = resultAmplitude]
  br label %12, !dbg !171                         ; [debug line = 61:2]

; <label>:5                                       ; preds = %._crit_edge12
  %tmp.29 = icmp slt i32 %tmp.24, %decayDuration, !dbg !172 ; [#uses=1 type=i1] [debug line = 63:7]
  br i1 %tmp.29, label %6, label %7, !dbg !172    ; [debug line = 63:7]

; <label>:6                                       ; preds = %5
  %decaySlope.load = load float* @decaySlope, align 4, !dbg !173 ; [#uses=1 type=float] [debug line = 64:3]
  %tmp.30 = sub nsw i32 %tmp.24, %attackDuration, !dbg !173 ; [#uses=1 type=i32] [debug line = 64:3]
  %tmp.31 = sitofp i32 %tmp.30 to float, !dbg !173 ; [#uses=1 type=float] [debug line = 64:3]
  %tmp.32 = fmul float %decaySlope.load, %tmp.31, !dbg !173 ; [#uses=1 type=float] [debug line = 64:3]
  %tmp.33 = fadd float %tmp.32, 2.000000e+00, !dbg !173 ; [#uses=1 type=float] [debug line = 64:3]
  %resultAmplitude.2 = fmul float %resultAmplitude, %tmp.33, !dbg !173 ; [#uses=1 type=float] [debug line = 64:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.2}, i64 0, metadata !156), !dbg !173 ; [debug line = 64:3] [debug variable = resultAmplitude]
  br label %12, !dbg !175                         ; [debug line = 65:2]

; <label>:7                                       ; preds = %5
  %sustainTime.load.1 = load i32* @sustainTime, align 4, !dbg !176 ; [#uses=2 type=i32] [debug line = 67:7]
  %tmp.35 = icmp slt i32 %tmp.24, %sustainTime.load.1, !dbg !176 ; [#uses=1 type=i1] [debug line = 67:7]
  br i1 %tmp.35, label %8, label %9, !dbg !176    ; [debug line = 67:7]

; <label>:8                                       ; preds = %7
  %tmp.36 = sitofp i32 %sustainAmplitude to float, !dbg !177 ; [#uses=1 type=float] [debug line = 68:3]
  %resultAmplitude.3 = fmul float %resultAmplitude, %tmp.36, !dbg !177 ; [#uses=1 type=float] [debug line = 68:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.3}, i64 0, metadata !156), !dbg !177 ; [debug line = 68:3] [debug variable = resultAmplitude]
  br label %12, !dbg !179                         ; [debug line = 69:2]

; <label>:9                                       ; preds = %7
  %releaseTime.load.1 = load i32* @releaseTime, align 4, !dbg !180 ; [#uses=1 type=i32] [debug line = 71:7]
  %tmp.38 = icmp slt i32 %tmp.24, %releaseTime.load.1, !dbg !180 ; [#uses=1 type=i1] [debug line = 71:7]
  br i1 %tmp.38, label %10, label %11, !dbg !180  ; [debug line = 71:7]

; <label>:10                                      ; preds = %9
  %releaseSlope.load = load float* @releaseSlope, align 4, !dbg !181 ; [#uses=1 type=float] [debug line = 72:3]
  %tmp.39 = sub nsw i32 %tmp.24, %sustainTime.load.1, !dbg !181 ; [#uses=1 type=i32] [debug line = 72:3]
  %tmp.40 = sitofp i32 %tmp.39 to float, !dbg !181 ; [#uses=1 type=float] [debug line = 72:3]
  %tmp.41 = fmul float %releaseSlope.load, %tmp.40, !dbg !181 ; [#uses=1 type=float] [debug line = 72:3]
  %tmp.42 = sitofp i32 %sustainAmplitude to float, !dbg !181 ; [#uses=1 type=float] [debug line = 72:3]
  %tmp.43 = fadd float %tmp.41, %tmp.42, !dbg !181 ; [#uses=1 type=float] [debug line = 72:3]
  %resultAmplitude.4 = fmul float %resultAmplitude, %tmp.43, !dbg !181 ; [#uses=1 type=float] [debug line = 72:3]
  call void @llvm.dbg.value(metadata !{float %resultAmplitude.4}, i64 0, metadata !156), !dbg !181 ; [debug line = 72:3] [debug variable = resultAmplitude]
  br label %12, !dbg !183                         ; [debug line = 73:2]

; <label>:11                                      ; preds = %9
  store i32 1, i32* @wait, align 4, !dbg !184     ; [debug line = 77:3]
  br label %12

; <label>:12                                      ; preds = %11, %10, %8, %6, %4
  %tmp.47 = phi float [ %resultAmplitude.1, %4 ], [ %resultAmplitude.2, %6 ], [ %resultAmplitude.3, %8 ], [ %resultAmplitude.4, %10 ], [ 0.000000e+00, %11 ] ; [#uses=1 type=float]
  %tmp.45 = add nsw i32 %tmp.24, 1, !dbg !186     ; [#uses=1 type=i32] [debug line = 80:2]
  store i32 %tmp.45, i32* @time, align 4, !dbg !186 ; [debug line = 80:2]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %wave_out}, i64 0, metadata !187), !dbg !188 ; [debug line = 105:48@82:2] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %wave_out}, i64 0, metadata !190), !dbg !191 ; [debug line = 144:48@106:9@82:2] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{float* %tmp.46}, metadata !194) nounwind, !dbg !196 ; [debug line = 145:22@106:9@82:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.47}, i64 0, metadata !194), !dbg !197 ; [debug line = 145:31@106:9@82:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.47}, i64 0, metadata !194), !dbg !197 ; [debug line = 145:31@106:9@82:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.47}, i64 0, metadata !194), !dbg !197 ; [debug line = 145:31@106:9@82:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.47}, i64 0, metadata !194), !dbg !197 ; [debug line = 145:31@106:9@82:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.47}, i64 0, metadata !194), !dbg !197 ; [debug line = 145:31@106:9@82:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.47}, i64 0, metadata !194), !dbg !197 ; [debug line = 145:31@106:9@82:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.47}, i64 0, metadata !194), !dbg !197 ; [debug line = 145:31@106:9@82:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.47}, i64 0, metadata !194), !dbg !197 ; [debug line = 145:31@106:9@82:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.47}, i64 0, metadata !194), !dbg !197 ; [debug line = 145:31@106:9@82:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.47}, i64 0, metadata !194), !dbg !197 ; [debug line = 145:31@106:9@82:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.47}, i64 0, metadata !194), !dbg !197 ; [debug line = 145:31@106:9@82:2] [debug variable = tmp]
  store float %tmp.47, float* %tmp.46, align 4, !dbg !197 ; [debug line = 145:31@106:9@82:2]
  %wave_out.addr = getelementptr inbounds %"class.hls::stream.0"* %wave_out, i64 0, i32 0, !dbg !198 ; [#uses=1 type=float*] [debug line = 146:9@106:9@82:2]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %wave_out.addr, float* %tmp.46) nounwind, !dbg !198 ; [debug line = 146:9@106:9@82:2]
  ret void, !dbg !199                             ; [debug line = 83:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=9]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_IfWrite.Stream.floatP.floatP(float*, float*)

; [#uses=1]
declare void @_ssdm_op_IfRead.Stream.floatP.floatP(float*, float*)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!92, !99, !105, !107, !110}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope/Envelope_RTL/solution1/.autopilot/db/Envelope.pragma.2.cpp", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !73} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !69, metadata !70, metadata !71, metadata !72}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"envelope", metadata !"envelope", metadata !"_Z8envelopeRN3hls6streamIfEES2_iiiiii", metadata !6, i32 7, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*, %"class.hls::stream.0"*, i32, i32, i32, i32, i32, i32)* @envelope, null, null, metadata !20, i32 19} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"src/Envelope.cpp", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !68, metadata !68, metadata !68, metadata !68, metadata !68, metadata !68}
!9 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_reference_type ]
!10 = metadata !{i32 786434, metadata !11, metadata !"stream<float>", metadata !12, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !13, i32 0, null, metadata !66} ; [ DW_TAG_class_type ]
!11 = metadata !{i32 786489, null, metadata !"hls", metadata !12, i32 69} ; [ DW_TAG_namespace ]
!12 = metadata !{i32 786473, metadata !"/home/austin/Desktop/Vivado_HLS/2017.2/common/technology/autopilot/hls_stream.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!13 = metadata !{metadata !14, metadata !16, metadata !22, metadata !28, metadata !33, metadata !36, metadata !40, metadata !45, metadata !50, metadata !51, metadata !52, metadata !55, metadata !58, metadata !59, metadata !62}
!14 = metadata !{i32 786445, metadata !10, metadata !"V", metadata !12, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ]
!15 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!16 = metadata !{i32 786478, i32 0, metadata !10, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 83, metadata !17, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 83} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !19}
!19 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !10} ; [ DW_TAG_pointer_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!22 = metadata !{i32 786478, i32 0, metadata !10, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 86, metadata !23, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 86} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{null, metadata !19, metadata !25}
!25 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ]
!26 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_const_type ]
!27 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786478, i32 0, metadata !10, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 91, metadata !29, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !20, i32 91} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{null, metadata !19, metadata !31}
!31 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_reference_type ]
!32 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!33 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !12, i32 94, metadata !34, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !20, i32 94} ; [ DW_TAG_subprogram ]
!34 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{metadata !9, metadata !19, metadata !31}
!36 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !12, i32 101, metadata !37, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 101} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{null, metadata !19, metadata !39}
!39 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_reference_type ]
!40 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !12, i32 105, metadata !41, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 105} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!42 = metadata !{null, metadata !19, metadata !43}
!43 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_reference_type ]
!44 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_const_type ]
!45 = metadata !{i32 786478, i32 0, metadata !10, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !12, i32 112, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 112} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!47 = metadata !{metadata !48, metadata !49}
!48 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!49 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !32} ; [ DW_TAG_pointer_type ]
!50 = metadata !{i32 786478, i32 0, metadata !10, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !12, i32 117, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 117} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !12, i32 123, metadata !37, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 123} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !12, i32 129, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 129} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{metadata !15, metadata !19}
!55 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !12, i32 136, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 136} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!57 = metadata !{metadata !48, metadata !19, metadata !39}
!58 = metadata !{i32 786478, i32 0, metadata !10, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !12, i32 144, metadata !41, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786478, i32 0, metadata !10, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !12, i32 150, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 150} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{metadata !48, metadata !19, metadata !43}
!62 = metadata !{i32 786478, i32 0, metadata !10, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !12, i32 157, metadata !63, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 157} ; [ DW_TAG_subprogram ]
!63 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!64 = metadata !{metadata !65, metadata !19}
!65 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !15, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!68 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!69 = metadata !{i32 786478, i32 0, metadata !11, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !12, i32 105, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !40, metadata !20, i32 105} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786478, i32 0, metadata !11, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !12, i32 144, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !58, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786478, i32 0, metadata !11, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !12, i32 101, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !36, metadata !20, i32 101} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 786478, i32 0, metadata !11, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !12, i32 123, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !51, metadata !20, i32 123} ; [ DW_TAG_subprogram ]
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !85, metadata !86, metadata !87, metadata !89, metadata !90}
!75 = metadata !{i32 786484, i32 0, metadata !5, metadata !"time", metadata !"time", metadata !"", metadata !6, i32 34, metadata !68, i32 1, i32 1, i32* @time} ; [ DW_TAG_variable ]
!76 = metadata !{i32 786484, i32 0, metadata !5, metadata !"attackSlope", metadata !"attackSlope", metadata !"", metadata !6, i32 35, metadata !15, i32 1, i32 1, float* @attackSlope} ; [ DW_TAG_variable ]
!77 = metadata !{i32 786484, i32 0, metadata !5, metadata !"decaySlope", metadata !"decaySlope", metadata !"", metadata !6, i32 36, metadata !15, i32 1, i32 1, float* @decaySlope} ; [ DW_TAG_variable ]
!78 = metadata !{i32 786484, i32 0, metadata !5, metadata !"releaseSlope", metadata !"releaseSlope", metadata !"", metadata !6, i32 37, metadata !15, i32 1, i32 1, float* @releaseSlope} ; [ DW_TAG_variable ]
!79 = metadata !{i32 786484, i32 0, metadata !5, metadata !"releaseTime", metadata !"releaseTime", metadata !"", metadata !6, i32 41, metadata !68, i32 1, i32 1, i32* @releaseTime} ; [ DW_TAG_variable ]
!80 = metadata !{i32 786484, i32 0, metadata !5, metadata !"sustainTime", metadata !"sustainTime", metadata !"", metadata !6, i32 42, metadata !68, i32 1, i32 1, i32* @sustainTime} ; [ DW_TAG_variable ]
!81 = metadata !{i32 786484, i32 0, metadata !5, metadata !"wait", metadata !"wait", metadata !"", metadata !6, i32 43, metadata !68, i32 1, i32 1, i32* @wait} ; [ DW_TAG_variable ]
!82 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !83, i32 315, metadata !84, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!83 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!84 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !83, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!85 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !83, i32 316, metadata !84, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!86 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !83, i32 317, metadata !84, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!87 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !88, i32 26, metadata !68, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!88 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!89 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !88, i32 30, metadata !68, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!90 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !91, i32 168, metadata !68, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!91 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!92 = metadata !{void (%"class.hls::stream.0"*, %"class.hls::stream.0"*, i32, i32, i32, i32, i32, i32)* @envelope, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98}
!93 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!94 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!96 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!97 = metadata !{metadata !"kernel_arg_name", metadata !"wave_in", metadata !"wave_out", metadata !"press", metadata !"attackDuration", metadata !"decayDuration", metadata !"sustainAmplitude", metadata !"sustainDuration", metadata !"releaseDuration"}
!98 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!99 = metadata !{null, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !98}
!100 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!101 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!102 = metadata !{metadata !"kernel_arg_type", metadata !"const float &"}
!103 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!104 = metadata !{metadata !"kernel_arg_name", metadata !"wdata"}
!105 = metadata !{null, metadata !100, metadata !101, metadata !102, metadata !103, metadata !106, metadata !98}
!106 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!107 = metadata !{null, metadata !100, metadata !101, metadata !108, metadata !103, metadata !109, metadata !98}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"float &"}
!109 = metadata !{metadata !"kernel_arg_name", metadata !"rdata"}
!110 = metadata !{null, metadata !100, metadata !101, metadata !108, metadata !103, metadata !111, metadata !98}
!111 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!112 = metadata !{i32 786689, metadata !5, metadata !"wave_in", metadata !6, i32 16777225, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!113 = metadata !{i32 9, i32 23, metadata !5, null}
!114 = metadata !{i32 786689, metadata !5, metadata !"wave_out", metadata !6, i32 33554442, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!115 = metadata !{i32 10, i32 23, metadata !5, null}
!116 = metadata !{i32 786689, metadata !5, metadata !"press", metadata !6, i32 50331660, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!117 = metadata !{i32 12, i32 6, metadata !5, null}
!118 = metadata !{i32 786689, metadata !5, metadata !"attackDuration", metadata !6, i32 67108877, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!119 = metadata !{i32 13, i32 6, metadata !5, null}
!120 = metadata !{i32 786689, metadata !5, metadata !"decayDuration", metadata !6, i32 83886094, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 14, i32 6, metadata !5, null}
!122 = metadata !{i32 786689, metadata !5, metadata !"sustainAmplitude", metadata !6, i32 100663311, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 15, i32 6, metadata !5, null}
!124 = metadata !{i32 786689, metadata !5, metadata !"sustainDuration", metadata !6, i32 117440528, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 16, i32 6, metadata !5, null}
!126 = metadata !{i32 786689, metadata !5, metadata !"releaseDuration", metadata !6, i32 134217745, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 17, i32 6, metadata !5, null}
!128 = metadata !{i32 22, i32 1, metadata !129, null}
!129 = metadata !{i32 786443, metadata !5, i32 19, i32 2, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 24, i32 1, metadata !129, null}
!131 = metadata !{i32 25, i32 1, metadata !129, null}
!132 = metadata !{i32 27, i32 1, metadata !129, null}
!133 = metadata !{i32 28, i32 1, metadata !129, null}
!134 = metadata !{i32 29, i32 1, metadata !129, null}
!135 = metadata !{i32 30, i32 1, metadata !129, null}
!136 = metadata !{i32 31, i32 1, metadata !129, null}
!137 = metadata !{i32 32, i32 1, metadata !129, null}
!138 = metadata !{i32 35, i32 52, metadata !129, null}
!139 = metadata !{i32 36, i32 90, metadata !129, null}
!140 = metadata !{i32 37, i32 91, metadata !129, null}
!141 = metadata !{i32 41, i32 42, metadata !129, null}
!142 = metadata !{i32 42, i32 42, metadata !129, null}
!143 = metadata !{i32 786689, metadata !71, metadata !"this", metadata !12, i32 16777317, metadata !144, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!144 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!145 = metadata !{i32 101, i32 48, metadata !71, metadata !146}
!146 = metadata !{i32 45, i32 2, metadata !129, null}
!147 = metadata !{i32 786689, metadata !72, metadata !"this", metadata !12, i32 16777339, metadata !144, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!148 = metadata !{i32 123, i32 48, metadata !72, metadata !149}
!149 = metadata !{i32 102, i32 9, metadata !150, metadata !146}
!150 = metadata !{i32 786443, metadata !71, i32 101, i32 82, metadata !12, i32 10} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 786688, metadata !152, metadata !"tmp", metadata !12, i32 124, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 786443, metadata !72, i32 123, i32 73, metadata !12, i32 11} ; [ DW_TAG_lexical_block ]
!153 = metadata !{i32 124, i32 22, metadata !152, metadata !149}
!154 = metadata !{i32 125, i32 9, metadata !152, metadata !149}
!155 = metadata !{i32 126, i32 9, metadata !152, metadata !149}
!156 = metadata !{i32 786688, metadata !129, metadata !"resultAmplitude", metadata !6, i32 39, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!157 = metadata !{i32 47, i32 2, metadata !129, null}
!158 = metadata !{i32 48, i32 3, metadata !129, null}
!159 = metadata !{i32 50, i32 2, metadata !129, null}
!160 = metadata !{i32 51, i32 3, metadata !161, null}
!161 = metadata !{i32 786443, metadata !129, i32 50, i32 40, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 52, i32 3, metadata !161, null}
!163 = metadata !{i32 53, i32 2, metadata !161, null}
!164 = metadata !{i32 55, i32 2, metadata !129, null}
!165 = metadata !{i32 56, i32 3, metadata !166, null}
!166 = metadata !{i32 786443, metadata !129, i32 55, i32 10, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 57, i32 2, metadata !166, null}
!168 = metadata !{i32 59, i32 2, metadata !129, null}
!169 = metadata !{i32 60, i32 3, metadata !170, null}
!170 = metadata !{i32 786443, metadata !129, i32 59, i32 27, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 61, i32 2, metadata !170, null}
!172 = metadata !{i32 63, i32 7, metadata !129, null}
!173 = metadata !{i32 64, i32 3, metadata !174, null}
!174 = metadata !{i32 786443, metadata !129, i32 63, i32 31, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 65, i32 2, metadata !174, null}
!176 = metadata !{i32 67, i32 7, metadata !129, null}
!177 = metadata !{i32 68, i32 3, metadata !178, null}
!178 = metadata !{i32 786443, metadata !129, i32 67, i32 30, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 69, i32 2, metadata !178, null}
!180 = metadata !{i32 71, i32 7, metadata !129, null}
!181 = metadata !{i32 72, i32 3, metadata !182, null}
!182 = metadata !{i32 786443, metadata !129, i32 71, i32 29, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!183 = metadata !{i32 73, i32 2, metadata !182, null}
!184 = metadata !{i32 77, i32 3, metadata !185, null}
!185 = metadata !{i32 786443, metadata !129, i32 75, i32 7, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!186 = metadata !{i32 80, i32 2, metadata !129, null}
!187 = metadata !{i32 786689, metadata !69, metadata !"this", metadata !12, i32 16777321, metadata !144, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!188 = metadata !{i32 105, i32 48, metadata !69, metadata !189}
!189 = metadata !{i32 82, i32 2, metadata !129, null}
!190 = metadata !{i32 786689, metadata !70, metadata !"this", metadata !12, i32 16777360, metadata !144, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!191 = metadata !{i32 144, i32 48, metadata !70, metadata !192}
!192 = metadata !{i32 106, i32 9, metadata !193, metadata !189}
!193 = metadata !{i32 786443, metadata !69, i32 105, i32 88, metadata !12, i32 8} ; [ DW_TAG_lexical_block ]
!194 = metadata !{i32 786688, metadata !195, metadata !"tmp", metadata !12, i32 145, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!195 = metadata !{i32 786443, metadata !70, i32 144, i32 79, metadata !12, i32 9} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 145, i32 22, metadata !195, metadata !192}
!197 = metadata !{i32 145, i32 31, metadata !195, metadata !192}
!198 = metadata !{i32 146, i32 9, metadata !195, metadata !192}
!199 = metadata !{i32 83, i32 1, metadata !129, null}
