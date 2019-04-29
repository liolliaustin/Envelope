; ModuleID = '/home/austin/ECE1373_GhostSynth/modules/Envelope/Envelope_RTL/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.hls::stream" = type { float }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str4 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str5 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time = internal global i32 0, align 4 ; [#uses=10 type=i32*]
@_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11attackSlope = internal global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@_ZGVZ8envelopeRN3hls6streamIfEES2_iiifiE11attackSlope = internal global i8 0 ; [#uses=2 type=i8*]
@_ZZ8envelopeRN3hls6streamIfEES2_iiifiE10decaySlope = internal global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@_ZGVZ8envelopeRN3hls6streamIfEES2_iiifiE10decaySlope = internal global i8 0 ; [#uses=2 type=i8*]
@_ZZ8envelopeRN3hls6streamIfEES2_iiifiE12releaseSlope = internal global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@_ZGVZ8envelopeRN3hls6streamIfEES2_iiifiE12releaseSlope = internal global i8 0 ; [#uses=2 type=i8*]
@_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11releaseTime = internal global i32 0, align 4 ; [#uses=5 type=i32*]
@_ZGVZ8envelopeRN3hls6streamIfEES2_iiifiE11releaseTime = internal global i8 0 ; [#uses=2 type=i8*]
@_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11sustainTime = internal global i32 0, align 4 ; [#uses=6 type=i32*]
@_ZGVZ8envelopeRN3hls6streamIfEES2_iiifiE11sustainTime = internal global i8 0 ; [#uses=2 type=i8*]
@_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4wait = internal global i32 0, align 4 ; [#uses=3 type=i32*]
@_IO_2_1_stdin_ = external global %"class.hls::stream" ; [#uses=0 type=%"class.hls::stream"*]
@_IO_2_1_stdout_ = external global %"class.hls::stream" ; [#uses=0 type=%"class.hls::stream"*]
@_IO_2_1_stderr_ = external global %"class.hls::stream" ; [#uses=0 type=%"class.hls::stream"*]
@sys_nerr = external global i32                   ; [#uses=0 type=i32*]
@_sys_nerr = external global i32                  ; [#uses=0 type=i32*]
@signgam = external global i32                    ; [#uses=0 type=i32*]

; [#uses=0]
define void @_Z8envelopeRN3hls6streamIfEES2_iiifi(%"class.hls::stream"* %wave_in, %"class.hls::stream"* %wave_out, i32 %press, i32 %attackDuration, i32 %decayDuration, float %sustainAmplitude, i32 %releaseDuration) nounwind uwtable {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=3 type=%"class.hls::stream"**]
  %2 = alloca %"class.hls::stream"*, align 8      ; [#uses=3 type=%"class.hls::stream"**]
  %3 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %4 = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %5 = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %6 = alloca float, align 4                      ; [#uses=8 type=float*]
  %7 = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %resultAmplitude = alloca float, align 4        ; [#uses=11 type=float*]
  store %"class.hls::stream"* %wave_in, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !112), !dbg !113 ; [debug line = 9:23] [debug variable = wave_in]
  store %"class.hls::stream"* %wave_out, %"class.hls::stream"** %2, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %2}, metadata !114), !dbg !115 ; [debug line = 10:23] [debug variable = wave_out]
  store i32 %press, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !116), !dbg !117 ; [debug line = 12:6] [debug variable = press]
  store i32 %attackDuration, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !118), !dbg !119 ; [debug line = 13:6] [debug variable = attackDuration]
  store i32 %decayDuration, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !120), !dbg !121 ; [debug line = 14:6] [debug variable = decayDuration]
  store float %sustainAmplitude, float* %6, align 4
  call void @llvm.dbg.declare(metadata !{float* %6}, metadata !122), !dbg !123 ; [debug line = 15:8] [debug variable = sustainAmplitude]
  store i32 %releaseDuration, i32* %7, align 4
  call void @llvm.dbg.declare(metadata !{i32* %7}, metadata !124), !dbg !125 ; [debug line = 16:6] [debug variable = releaseDuration]
  call void (...)* @_ssdm_InlineSelf(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !126 ; [debug line = 19:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !128 ; [debug line = 21:1]
  %8 = load %"class.hls::stream"** %1, align 8, !dbg !129 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 23:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream"* %8, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !129 ; [debug line = 23:1]
  %9 = load %"class.hls::stream"** %2, align 8, !dbg !130 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 24:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream"* %9, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !130 ; [debug line = 24:1]
  %10 = load i32* %3, align 4, !dbg !131          ; [#uses=1 type=i32] [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %10, i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !131 ; [debug line = 26:1]
  %11 = load i32* %4, align 4, !dbg !132          ; [#uses=1 type=i32] [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %11, i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !132 ; [debug line = 27:1]
  %12 = load i32* %5, align 4, !dbg !133          ; [#uses=1 type=i32] [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %12, i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !133 ; [debug line = 28:1]
  %13 = load float* %6, align 4, !dbg !134        ; [#uses=1 type=float] [debug line = 29:1]
  %14 = fpext float %13 to double, !dbg !134      ; [#uses=1 type=double] [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(double %14, i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !134 ; [debug line = 29:1]
  %15 = load i32* %7, align 4, !dbg !135          ; [#uses=1 type=i32] [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %15, i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !135 ; [debug line = 30:1]
  %16 = load i8* @_ZGVZ8envelopeRN3hls6streamIfEES2_iiifiE11attackSlope, align 1, !dbg !136 ; [#uses=1 type=i8] [debug line = 33:52]
  %17 = icmp eq i8 %16, 0, !dbg !136              ; [#uses=1 type=i1] [debug line = 33:52]
  br i1 %17, label %18, label %22, !dbg !136      ; [debug line = 33:52]

; <label>:18                                      ; preds = %0
  %19 = load i32* %4, align 4, !dbg !136          ; [#uses=1 type=i32] [debug line = 33:52]
  %20 = sitofp i32 %19 to float, !dbg !136        ; [#uses=1 type=float] [debug line = 33:52]
  %21 = fdiv float 1.000000e+00, %20, !dbg !136   ; [#uses=1 type=float] [debug line = 33:52]
  store float %21, float* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11attackSlope, align 4, !dbg !136 ; [debug line = 33:52]
  store i8 1, i8* @_ZGVZ8envelopeRN3hls6streamIfEES2_iiifiE11attackSlope, !dbg !136 ; [debug line = 33:52]
  br label %22, !dbg !136                         ; [debug line = 33:52]

; <label>:22                                      ; preds = %18, %0
  %23 = load i8* @_ZGVZ8envelopeRN3hls6streamIfEES2_iiifiE10decaySlope, align 1, !dbg !137 ; [#uses=1 type=i8] [debug line = 34:90]
  %24 = icmp eq i8 %23, 0, !dbg !137              ; [#uses=1 type=i1] [debug line = 34:90]
  br i1 %24, label %25, label %33, !dbg !137      ; [debug line = 34:90]

; <label>:25                                      ; preds = %22
  %26 = load float* %6, align 4, !dbg !137        ; [#uses=1 type=float] [debug line = 34:90]
  %27 = fsub float %26, 1.000000e+00, !dbg !137   ; [#uses=1 type=float] [debug line = 34:90]
  %28 = load i32* %5, align 4, !dbg !137          ; [#uses=1 type=i32] [debug line = 34:90]
  %29 = load i32* %4, align 4, !dbg !137          ; [#uses=1 type=i32] [debug line = 34:90]
  %30 = sub nsw i32 %28, %29, !dbg !137           ; [#uses=1 type=i32] [debug line = 34:90]
  %31 = sitofp i32 %30 to float, !dbg !137        ; [#uses=1 type=float] [debug line = 34:90]
  %32 = fdiv float %27, %31, !dbg !137            ; [#uses=1 type=float] [debug line = 34:90]
  store float %32, float* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE10decaySlope, align 4, !dbg !137 ; [debug line = 34:90]
  store i8 1, i8* @_ZGVZ8envelopeRN3hls6streamIfEES2_iiifiE10decaySlope, !dbg !137 ; [debug line = 34:90]
  br label %33, !dbg !137                         ; [debug line = 34:90]

; <label>:33                                      ; preds = %25, %22
  %34 = load i8* @_ZGVZ8envelopeRN3hls6streamIfEES2_iiifiE12releaseSlope, align 1, !dbg !138 ; [#uses=1 type=i8] [debug line = 35:89]
  %35 = icmp eq i8 %34, 0, !dbg !138              ; [#uses=1 type=i1] [debug line = 35:89]
  br i1 %35, label %36, label %44, !dbg !138      ; [debug line = 35:89]

; <label>:36                                      ; preds = %33
  %37 = load float* %6, align 4, !dbg !138        ; [#uses=1 type=float] [debug line = 35:89]
  %38 = fsub float 0.000000e+00, %37, !dbg !138   ; [#uses=1 type=float] [debug line = 35:89]
  %39 = load i32* %7, align 4, !dbg !138          ; [#uses=1 type=i32] [debug line = 35:89]
  %40 = load i32* %5, align 4, !dbg !138          ; [#uses=1 type=i32] [debug line = 35:89]
  %41 = sub nsw i32 %39, %40, !dbg !138           ; [#uses=1 type=i32] [debug line = 35:89]
  %42 = sitofp i32 %41 to float, !dbg !138        ; [#uses=1 type=float] [debug line = 35:89]
  %43 = fdiv float %38, %42, !dbg !138            ; [#uses=1 type=float] [debug line = 35:89]
  store float %43, float* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE12releaseSlope, align 4, !dbg !138 ; [debug line = 35:89]
  store i8 1, i8* @_ZGVZ8envelopeRN3hls6streamIfEES2_iiifiE12releaseSlope, !dbg !138 ; [debug line = 35:89]
  br label %44, !dbg !138                         ; [debug line = 35:89]

; <label>:44                                      ; preds = %36, %33
  call void @llvm.dbg.declare(metadata !{float* %resultAmplitude}, metadata !139), !dbg !140 ; [debug line = 37:8] [debug variable = resultAmplitude]
  %45 = load float* %6, align 4, !dbg !141        ; [#uses=1 type=float] [debug line = 39:2]
  %46 = fpext float %45 to double, !dbg !141      ; [#uses=1 type=double] [debug line = 39:2]
  %47 = fcmp ogt double %46, 1.000000e+00, !dbg !141 ; [#uses=1 type=i1] [debug line = 39:2]
  br i1 %47, label %48, label %49, !dbg !141      ; [debug line = 39:2]

; <label>:48                                      ; preds = %44
  store float 1.000000e+00, float* %6, align 4, !dbg !142 ; [debug line = 40:3]
  br label %49, !dbg !142                         ; [debug line = 40:3]

; <label>:49                                      ; preds = %48, %44
  %50 = load i8* @_ZGVZ8envelopeRN3hls6streamIfEES2_iiifiE11releaseTime, align 1, !dbg !143 ; [#uses=1 type=i8] [debug line = 42:42]
  %51 = icmp eq i8 %50, 0, !dbg !143              ; [#uses=1 type=i1] [debug line = 42:42]
  br i1 %51, label %52, label %54, !dbg !143      ; [debug line = 42:42]

; <label>:52                                      ; preds = %49
  %53 = load i32* %7, align 4, !dbg !143          ; [#uses=1 type=i32] [debug line = 42:42]
  store i32 %53, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11releaseTime, align 4, !dbg !143 ; [debug line = 42:42]
  store i8 1, i8* @_ZGVZ8envelopeRN3hls6streamIfEES2_iiifiE11releaseTime, !dbg !143 ; [debug line = 42:42]
  br label %54, !dbg !143                         ; [debug line = 42:42]

; <label>:54                                      ; preds = %52, %49
  %55 = load i8* @_ZGVZ8envelopeRN3hls6streamIfEES2_iiifiE11sustainTime, align 1, !dbg !144 ; [#uses=1 type=i8] [debug line = 43:42]
  %56 = icmp eq i8 %55, 0, !dbg !144              ; [#uses=1 type=i1] [debug line = 43:42]
  br i1 %56, label %57, label %60, !dbg !144      ; [debug line = 43:42]

; <label>:57                                      ; preds = %54
  %58 = load i32* %5, align 4, !dbg !144          ; [#uses=1 type=i32] [debug line = 43:42]
  %59 = add nsw i32 %58, 1, !dbg !144             ; [#uses=1 type=i32] [debug line = 43:42]
  store i32 %59, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11sustainTime, align 4, !dbg !144 ; [debug line = 43:42]
  store i8 1, i8* @_ZGVZ8envelopeRN3hls6streamIfEES2_iiifiE11sustainTime, !dbg !144 ; [debug line = 43:42]
  br label %60, !dbg !144                         ; [debug line = 43:42]

; <label>:60                                      ; preds = %57, %54
  %61 = load %"class.hls::stream"** %1, align 8, !dbg !145 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 46:2]
  call void @_ZN3hls6streamIfErsERf(%"class.hls::stream"* %61, float* %resultAmplitude), !dbg !145 ; [debug line = 46:2]
  %62 = load i32* %3, align 4, !dbg !146          ; [#uses=1 type=i32] [debug line = 48:2]
  %63 = icmp ne i32 %62, 0, !dbg !146             ; [#uses=1 type=i1] [debug line = 48:2]
  br i1 %63, label %64, label %69, !dbg !146      ; [debug line = 48:2]

; <label>:64                                      ; preds = %60
  store i32 0, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4wait, align 4, !dbg !147 ; [debug line = 49:3]
  %65 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11sustainTime, align 4, !dbg !149 ; [#uses=1 type=i32] [debug line = 50:3]
  %66 = add nsw i32 %65, 1, !dbg !149             ; [#uses=1 type=i32] [debug line = 50:3]
  store i32 %66, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11sustainTime, align 4, !dbg !149 ; [debug line = 50:3]
  %67 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11releaseTime, align 4, !dbg !150 ; [#uses=1 type=i32] [debug line = 51:3]
  %68 = add nsw i32 %67, 1, !dbg !150             ; [#uses=1 type=i32] [debug line = 51:3]
  store i32 %68, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11releaseTime, align 4, !dbg !150 ; [debug line = 51:3]
  br label %69, !dbg !151                         ; [debug line = 52:2]

; <label>:69                                      ; preds = %64, %60
  %70 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4wait, align 4, !dbg !152 ; [#uses=1 type=i32] [debug line = 54:2]
  %71 = icmp ne i32 %70, 0, !dbg !152             ; [#uses=1 type=i1] [debug line = 54:2]
  br i1 %71, label %72, label %76, !dbg !152      ; [debug line = 54:2]

; <label>:72                                      ; preds = %69
  store i32 0, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time, align 4, !dbg !153 ; [debug line = 55:3]
  %73 = load i32* %7, align 4, !dbg !155          ; [#uses=1 type=i32] [debug line = 56:3]
  store i32 %73, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11releaseTime, align 4, !dbg !155 ; [debug line = 56:3]
  %74 = load i32* %5, align 4, !dbg !156          ; [#uses=1 type=i32] [debug line = 57:3]
  %75 = add nsw i32 %74, 1, !dbg !156             ; [#uses=1 type=i32] [debug line = 57:3]
  store i32 %75, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11sustainTime, align 4, !dbg !156 ; [debug line = 57:3]
  br label %76, !dbg !157                         ; [debug line = 58:2]

; <label>:76                                      ; preds = %72, %69
  %77 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time, align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 60:2]
  %78 = load i32* %4, align 4, !dbg !158          ; [#uses=1 type=i32] [debug line = 60:2]
  %79 = icmp slt i32 %77, %78, !dbg !158          ; [#uses=1 type=i1] [debug line = 60:2]
  br i1 %79, label %80, label %87, !dbg !158      ; [debug line = 60:2]

; <label>:80                                      ; preds = %76
  %81 = load float* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11attackSlope, align 4, !dbg !159 ; [#uses=1 type=float] [debug line = 61:3]
  %82 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time, align 4, !dbg !159 ; [#uses=1 type=i32] [debug line = 61:3]
  %83 = sitofp i32 %82 to float, !dbg !159        ; [#uses=1 type=float] [debug line = 61:3]
  %84 = fmul float %81, %83, !dbg !159            ; [#uses=1 type=float] [debug line = 61:3]
  %85 = load float* %resultAmplitude, align 4, !dbg !159 ; [#uses=1 type=float] [debug line = 61:3]
  %86 = fmul float %85, %84, !dbg !159            ; [#uses=1 type=float] [debug line = 61:3]
  store float %86, float* %resultAmplitude, align 4, !dbg !159 ; [debug line = 61:3]
  br label %128, !dbg !161                        ; [debug line = 62:2]

; <label>:87                                      ; preds = %76
  %88 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time, align 4, !dbg !162 ; [#uses=1 type=i32] [debug line = 64:7]
  %89 = load i32* %5, align 4, !dbg !162          ; [#uses=1 type=i32] [debug line = 64:7]
  %90 = icmp slt i32 %88, %89, !dbg !162          ; [#uses=1 type=i1] [debug line = 64:7]
  br i1 %90, label %91, label %101, !dbg !162     ; [debug line = 64:7]

; <label>:91                                      ; preds = %87
  %92 = load float* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE10decaySlope, align 4, !dbg !163 ; [#uses=1 type=float] [debug line = 65:3]
  %93 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time, align 4, !dbg !163 ; [#uses=1 type=i32] [debug line = 65:3]
  %94 = load i32* %4, align 4, !dbg !163          ; [#uses=1 type=i32] [debug line = 65:3]
  %95 = sub nsw i32 %93, %94, !dbg !163           ; [#uses=1 type=i32] [debug line = 65:3]
  %96 = sitofp i32 %95 to float, !dbg !163        ; [#uses=1 type=float] [debug line = 65:3]
  %97 = fmul float %92, %96, !dbg !163            ; [#uses=1 type=float] [debug line = 65:3]
  %98 = fadd float %97, 1.000000e+00, !dbg !163   ; [#uses=1 type=float] [debug line = 65:3]
  %99 = load float* %resultAmplitude, align 4, !dbg !163 ; [#uses=1 type=float] [debug line = 65:3]
  %100 = fmul float %99, %98, !dbg !163           ; [#uses=1 type=float] [debug line = 65:3]
  store float %100, float* %resultAmplitude, align 4, !dbg !163 ; [debug line = 65:3]
  br label %127, !dbg !165                        ; [debug line = 66:2]

; <label>:101                                     ; preds = %87
  %102 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time, align 4, !dbg !166 ; [#uses=1 type=i32] [debug line = 68:7]
  %103 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11sustainTime, align 4, !dbg !166 ; [#uses=1 type=i32] [debug line = 68:7]
  %104 = icmp slt i32 %102, %103, !dbg !166       ; [#uses=1 type=i1] [debug line = 68:7]
  br i1 %104, label %105, label %109, !dbg !166   ; [debug line = 68:7]

; <label>:105                                     ; preds = %101
  %106 = load float* %6, align 4, !dbg !167       ; [#uses=1 type=float] [debug line = 69:3]
  %107 = load float* %resultAmplitude, align 4, !dbg !167 ; [#uses=1 type=float] [debug line = 69:3]
  %108 = fmul float %107, %106, !dbg !167         ; [#uses=1 type=float] [debug line = 69:3]
  store float %108, float* %resultAmplitude, align 4, !dbg !167 ; [debug line = 69:3]
  br label %126, !dbg !169                        ; [debug line = 70:2]

; <label>:109                                     ; preds = %101
  %110 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time, align 4, !dbg !170 ; [#uses=1 type=i32] [debug line = 72:7]
  %111 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11releaseTime, align 4, !dbg !170 ; [#uses=1 type=i32] [debug line = 72:7]
  %112 = icmp slt i32 %110, %111, !dbg !170       ; [#uses=1 type=i1] [debug line = 72:7]
  br i1 %112, label %113, label %124, !dbg !170   ; [debug line = 72:7]

; <label>:113                                     ; preds = %109
  %114 = load float* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE12releaseSlope, align 4, !dbg !171 ; [#uses=1 type=float] [debug line = 73:3]
  %115 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time, align 4, !dbg !171 ; [#uses=1 type=i32] [debug line = 73:3]
  %116 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11sustainTime, align 4, !dbg !171 ; [#uses=1 type=i32] [debug line = 73:3]
  %117 = sub nsw i32 %115, %116, !dbg !171        ; [#uses=1 type=i32] [debug line = 73:3]
  %118 = sitofp i32 %117 to float, !dbg !171      ; [#uses=1 type=float] [debug line = 73:3]
  %119 = fmul float %114, %118, !dbg !171         ; [#uses=1 type=float] [debug line = 73:3]
  %120 = load float* %6, align 4, !dbg !171       ; [#uses=1 type=float] [debug line = 73:3]
  %121 = fadd float %119, %120, !dbg !171         ; [#uses=1 type=float] [debug line = 73:3]
  %122 = load float* %resultAmplitude, align 4, !dbg !171 ; [#uses=1 type=float] [debug line = 73:3]
  %123 = fmul float %122, %121, !dbg !171         ; [#uses=1 type=float] [debug line = 73:3]
  store float %123, float* %resultAmplitude, align 4, !dbg !171 ; [debug line = 73:3]
  br label %125, !dbg !173                        ; [debug line = 74:2]

; <label>:124                                     ; preds = %109
  store float 0.000000e+00, float* %resultAmplitude, align 4, !dbg !174 ; [debug line = 77:3]
  store i32 1, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4wait, align 4, !dbg !176 ; [debug line = 78:3]
  br label %125

; <label>:125                                     ; preds = %124, %113
  br label %126

; <label>:126                                     ; preds = %125, %105
  br label %127

; <label>:127                                     ; preds = %126, %91
  br label %128

; <label>:128                                     ; preds = %127, %80
  %129 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time, align 4, !dbg !177 ; [#uses=1 type=i32] [debug line = 81:2]
  %130 = add nsw i32 %129, 1, !dbg !177           ; [#uses=1 type=i32] [debug line = 81:2]
  store i32 %130, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time, align 4, !dbg !177 ; [debug line = 81:2]
  %131 = load %"class.hls::stream"** %2, align 8, !dbg !178 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 83:2]
  call void @_ZN3hls6streamIfElsERKf(%"class.hls::stream"* %131, float* %resultAmplitude), !dbg !178 ; [debug line = 83:2]
  ret void, !dbg !179                             ; [debug line = 84:1]
}

; [#uses=18]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_InlineSelf(...) nounwind

; [#uses=8]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIfErsERf(%"class.hls::stream"* %this, float* %rdata) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca float*, align 8                     ; [#uses=2 type=float**]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !180), !dbg !182 ; [debug line = 101:48] [debug variable = this]
  store float* %rdata, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !183), !dbg !184 ; [debug line = 101:75] [debug variable = rdata]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  %4 = load float** %2, align 8, !dbg !185        ; [#uses=1 type=float*] [debug line = 102:9]
  call void @_ZN3hls6streamIfE4readERf(%"class.hls::stream"* %3, float* %4), !dbg !185 ; [debug line = 102:9]
  ret void, !dbg !187                             ; [debug line = 103:5]
}

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIfElsERKf(%"class.hls::stream"* %this, float* %wdata) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca float*, align 8                     ; [#uses=2 type=float**]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !188), !dbg !189 ; [debug line = 105:48] [debug variable = this]
  store float* %wdata, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !190), !dbg !191 ; [debug line = 105:81] [debug variable = wdata]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  %4 = load float** %2, align 8, !dbg !192        ; [#uses=1 type=float*] [debug line = 106:9]
  call void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream"* %3, float* %4), !dbg !192 ; [debug line = 106:9]
  ret void, !dbg !194                             ; [debug line = 107:5]
}

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream"* %this, float* %din) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca float*, align 8                     ; [#uses=2 type=float**]
  %tmp = alloca float, align 4                    ; [#uses=2 type=float*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !195), !dbg !196 ; [debug line = 144:48] [debug variable = this]
  store float* %din, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !197), !dbg !198 ; [debug line = 144:74] [debug variable = din]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{float* %tmp}, metadata !199), !dbg !201 ; [debug line = 145:22] [debug variable = tmp]
  %4 = load float** %2, align 8, !dbg !202        ; [#uses=1 type=float*] [debug line = 145:31]
  %5 = load float* %4, align 4, !dbg !202         ; [#uses=1 type=float] [debug line = 145:31]
  store float %5, float* %tmp, align 4, !dbg !202 ; [debug line = 145:31]
  %6 = getelementptr inbounds %"class.hls::stream"* %3, i32 0, i32 0, !dbg !203 ; [#uses=1 type=float*] [debug line = 146:9]
  call void (...)* @_ssdm_StreamWrite(float* %6, float* %tmp) nounwind, !dbg !203 ; [debug line = 146:9]
  ret void, !dbg !204                             ; [debug line = 147:5]
}

; [#uses=1]
declare void @_ssdm_StreamWrite(...) nounwind

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIfE4readERf(%"class.hls::stream"* %this, float* %dout) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca float*, align 8                     ; [#uses=2 type=float**]
  %tmp = alloca float, align 4                    ; [#uses=2 type=float*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !205), !dbg !206 ; [debug line = 123:48] [debug variable = this]
  store float* %dout, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !207), !dbg !208 ; [debug line = 123:67] [debug variable = dout]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{float* %tmp}, metadata !209), !dbg !211 ; [debug line = 124:22] [debug variable = tmp]
  %4 = getelementptr inbounds %"class.hls::stream"* %3, i32 0, i32 0, !dbg !212 ; [#uses=1 type=float*] [debug line = 125:9]
  call void (...)* @_ssdm_StreamRead(float* %4, float* %tmp) nounwind, !dbg !212 ; [debug line = 125:9]
  %5 = load float* %tmp, align 4, !dbg !213       ; [#uses=1 type=float] [debug line = 126:9]
  %6 = load float** %2, align 8, !dbg !213        ; [#uses=1 type=float*] [debug line = 126:9]
  store float %5, float* %6, align 4, !dbg !213   ; [debug line = 126:9]
  ret void, !dbg !214                             ; [debug line = 127:5]
}

; [#uses=1]
declare void @_ssdm_StreamRead(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!92, !99, !105, !107, !110}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope/Envelope_RTL/solution1/.autopilot/db/Envelope.pragma.2.cpp", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !73} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !69, metadata !70, metadata !71, metadata !72}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"envelope", metadata !"envelope", metadata !"_Z8envelopeRN3hls6streamIfEES2_iiifi", metadata !6, i32 7, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, %"class.hls::stream"*, i32, i32, i32, float, i32)* @_Z8envelopeRN3hls6streamIfEES2_iiifi, null, null, metadata !20, i32 18} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"src/Envelope.cpp", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !68, metadata !68, metadata !68, metadata !15, metadata !68}
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
!69 = metadata !{i32 786478, i32 0, metadata !11, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !12, i32 105, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfElsERKf, null, metadata !40, metadata !20, i32 105} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786478, i32 0, metadata !11, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !12, i32 144, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfE5writeERKf, null, metadata !58, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786478, i32 0, metadata !11, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !12, i32 101, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfErsERf, null, metadata !36, metadata !20, i32 101} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 786478, i32 0, metadata !11, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !12, i32 123, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfE4readERf, null, metadata !51, metadata !20, i32 123} ; [ DW_TAG_subprogram ]
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !85, metadata !86, metadata !87, metadata !89, metadata !90}
!75 = metadata !{i32 786484, i32 0, metadata !5, metadata !"time", metadata !"time", metadata !"", metadata !6, i32 32, metadata !68, i32 1, i32 1, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time} ; [ DW_TAG_variable ]
!76 = metadata !{i32 786484, i32 0, metadata !5, metadata !"attackSlope", metadata !"attackSlope", metadata !"", metadata !6, i32 33, metadata !15, i32 1, i32 1, float* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11attackSlope} ; [ DW_TAG_variable ]
!77 = metadata !{i32 786484, i32 0, metadata !5, metadata !"decaySlope", metadata !"decaySlope", metadata !"", metadata !6, i32 34, metadata !15, i32 1, i32 1, float* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE10decaySlope} ; [ DW_TAG_variable ]
!78 = metadata !{i32 786484, i32 0, metadata !5, metadata !"releaseSlope", metadata !"releaseSlope", metadata !"", metadata !6, i32 35, metadata !15, i32 1, i32 1, float* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE12releaseSlope} ; [ DW_TAG_variable ]
!79 = metadata !{i32 786484, i32 0, metadata !5, metadata !"releaseTime", metadata !"releaseTime", metadata !"", metadata !6, i32 42, metadata !68, i32 1, i32 1, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11releaseTime} ; [ DW_TAG_variable ]
!80 = metadata !{i32 786484, i32 0, metadata !5, metadata !"sustainTime", metadata !"sustainTime", metadata !"", metadata !6, i32 43, metadata !68, i32 1, i32 1, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11sustainTime} ; [ DW_TAG_variable ]
!81 = metadata !{i32 786484, i32 0, metadata !5, metadata !"wait", metadata !"wait", metadata !"", metadata !6, i32 44, metadata !68, i32 1, i32 1, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4wait} ; [ DW_TAG_variable ]
!82 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !83, i32 315, metadata !84, i32 0, i32 1, %"class.hls::stream"* @_IO_2_1_stdin_} ; [ DW_TAG_variable ]
!83 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!84 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !83, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!85 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !83, i32 316, metadata !84, i32 0, i32 1, %"class.hls::stream"* @_IO_2_1_stdout_} ; [ DW_TAG_variable ]
!86 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !83, i32 317, metadata !84, i32 0, i32 1, %"class.hls::stream"* @_IO_2_1_stderr_} ; [ DW_TAG_variable ]
!87 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !88, i32 26, metadata !68, i32 0, i32 1, i32* @sys_nerr} ; [ DW_TAG_variable ]
!88 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!89 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !88, i32 30, metadata !68, i32 0, i32 1, i32* @_sys_nerr} ; [ DW_TAG_variable ]
!90 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !91, i32 168, metadata !68, i32 0, i32 1, i32* @signgam} ; [ DW_TAG_variable ]
!91 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!92 = metadata !{void (%"class.hls::stream"*, %"class.hls::stream"*, i32, i32, i32, float, i32)* @_Z8envelopeRN3hls6streamIfEES2_iiifi, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98}
!93 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!94 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &", metadata !"int", metadata !"int", metadata !"int", metadata !"float", metadata !"int"}
!96 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!97 = metadata !{metadata !"kernel_arg_name", metadata !"wave_in", metadata !"wave_out", metadata !"press", metadata !"attackDuration", metadata !"decayDuration", metadata !"sustainAmplitude", metadata !"releaseDuration"}
!98 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!99 = metadata !{void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfElsERKf, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !98}
!100 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!101 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!102 = metadata !{metadata !"kernel_arg_type", metadata !"const float &"}
!103 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!104 = metadata !{metadata !"kernel_arg_name", metadata !"wdata"}
!105 = metadata !{void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfE5writeERKf, metadata !100, metadata !101, metadata !102, metadata !103, metadata !106, metadata !98}
!106 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!107 = metadata !{void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfErsERf, metadata !100, metadata !101, metadata !108, metadata !103, metadata !109, metadata !98}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"float &"}
!109 = metadata !{metadata !"kernel_arg_name", metadata !"rdata"}
!110 = metadata !{void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfE4readERf, metadata !100, metadata !101, metadata !108, metadata !103, metadata !111, metadata !98}
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
!122 = metadata !{i32 786689, metadata !5, metadata !"sustainAmplitude", metadata !6, i32 100663311, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 15, i32 8, metadata !5, null}
!124 = metadata !{i32 786689, metadata !5, metadata !"releaseDuration", metadata !6, i32 117440528, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 16, i32 6, metadata !5, null}
!126 = metadata !{i32 19, i32 1, metadata !127, null}
!127 = metadata !{i32 786443, metadata !5, i32 18, i32 2, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 21, i32 1, metadata !127, null}
!129 = metadata !{i32 23, i32 1, metadata !127, null}
!130 = metadata !{i32 24, i32 1, metadata !127, null}
!131 = metadata !{i32 26, i32 1, metadata !127, null}
!132 = metadata !{i32 27, i32 1, metadata !127, null}
!133 = metadata !{i32 28, i32 1, metadata !127, null}
!134 = metadata !{i32 29, i32 1, metadata !127, null}
!135 = metadata !{i32 30, i32 1, metadata !127, null}
!136 = metadata !{i32 33, i32 52, metadata !127, null}
!137 = metadata !{i32 34, i32 90, metadata !127, null}
!138 = metadata !{i32 35, i32 89, metadata !127, null}
!139 = metadata !{i32 786688, metadata !127, metadata !"resultAmplitude", metadata !6, i32 37, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!140 = metadata !{i32 37, i32 8, metadata !127, null}
!141 = metadata !{i32 39, i32 2, metadata !127, null}
!142 = metadata !{i32 40, i32 3, metadata !127, null}
!143 = metadata !{i32 42, i32 42, metadata !127, null}
!144 = metadata !{i32 43, i32 42, metadata !127, null}
!145 = metadata !{i32 46, i32 2, metadata !127, null}
!146 = metadata !{i32 48, i32 2, metadata !127, null}
!147 = metadata !{i32 49, i32 3, metadata !148, null}
!148 = metadata !{i32 786443, metadata !127, i32 48, i32 11, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 50, i32 3, metadata !148, null}
!150 = metadata !{i32 51, i32 3, metadata !148, null}
!151 = metadata !{i32 52, i32 2, metadata !148, null}
!152 = metadata !{i32 54, i32 2, metadata !127, null}
!153 = metadata !{i32 55, i32 3, metadata !154, null}
!154 = metadata !{i32 786443, metadata !127, i32 54, i32 10, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 56, i32 3, metadata !154, null}
!156 = metadata !{i32 57, i32 3, metadata !154, null}
!157 = metadata !{i32 58, i32 2, metadata !154, null}
!158 = metadata !{i32 60, i32 2, metadata !127, null}
!159 = metadata !{i32 61, i32 3, metadata !160, null}
!160 = metadata !{i32 786443, metadata !127, i32 60, i32 27, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 62, i32 2, metadata !160, null}
!162 = metadata !{i32 64, i32 7, metadata !127, null}
!163 = metadata !{i32 65, i32 3, metadata !164, null}
!164 = metadata !{i32 786443, metadata !127, i32 64, i32 31, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 66, i32 2, metadata !164, null}
!166 = metadata !{i32 68, i32 7, metadata !127, null}
!167 = metadata !{i32 69, i32 3, metadata !168, null}
!168 = metadata !{i32 786443, metadata !127, i32 68, i32 30, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 70, i32 2, metadata !168, null}
!170 = metadata !{i32 72, i32 7, metadata !127, null}
!171 = metadata !{i32 73, i32 3, metadata !172, null}
!172 = metadata !{i32 786443, metadata !127, i32 72, i32 29, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 74, i32 2, metadata !172, null}
!174 = metadata !{i32 77, i32 3, metadata !175, null}
!175 = metadata !{i32 786443, metadata !127, i32 76, i32 7, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 78, i32 3, metadata !175, null}
!177 = metadata !{i32 81, i32 2, metadata !127, null}
!178 = metadata !{i32 83, i32 2, metadata !127, null}
!179 = metadata !{i32 84, i32 1, metadata !127, null}
!180 = metadata !{i32 786689, metadata !71, metadata !"this", metadata !12, i32 16777317, metadata !181, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!181 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!182 = metadata !{i32 101, i32 48, metadata !71, null}
!183 = metadata !{i32 786689, metadata !71, metadata !"rdata", metadata !12, i32 33554533, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!184 = metadata !{i32 101, i32 75, metadata !71, null}
!185 = metadata !{i32 102, i32 9, metadata !186, null}
!186 = metadata !{i32 786443, metadata !71, i32 101, i32 82, metadata !12, i32 10} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 103, i32 5, metadata !186, null}
!188 = metadata !{i32 786689, metadata !69, metadata !"this", metadata !12, i32 16777321, metadata !181, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!189 = metadata !{i32 105, i32 48, metadata !69, null}
!190 = metadata !{i32 786689, metadata !69, metadata !"wdata", metadata !12, i32 33554537, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!191 = metadata !{i32 105, i32 81, metadata !69, null}
!192 = metadata !{i32 106, i32 9, metadata !193, null}
!193 = metadata !{i32 786443, metadata !69, i32 105, i32 88, metadata !12, i32 8} ; [ DW_TAG_lexical_block ]
!194 = metadata !{i32 107, i32 5, metadata !193, null}
!195 = metadata !{i32 786689, metadata !70, metadata !"this", metadata !12, i32 16777360, metadata !181, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!196 = metadata !{i32 144, i32 48, metadata !70, null}
!197 = metadata !{i32 786689, metadata !70, metadata !"din", metadata !12, i32 33554576, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!198 = metadata !{i32 144, i32 74, metadata !70, null}
!199 = metadata !{i32 786688, metadata !200, metadata !"tmp", metadata !12, i32 145, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!200 = metadata !{i32 786443, metadata !70, i32 144, i32 79, metadata !12, i32 9} ; [ DW_TAG_lexical_block ]
!201 = metadata !{i32 145, i32 22, metadata !200, null}
!202 = metadata !{i32 145, i32 31, metadata !200, null}
!203 = metadata !{i32 146, i32 9, metadata !200, null}
!204 = metadata !{i32 147, i32 5, metadata !200, null}
!205 = metadata !{i32 786689, metadata !72, metadata !"this", metadata !12, i32 16777339, metadata !181, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!206 = metadata !{i32 123, i32 48, metadata !72, null}
!207 = metadata !{i32 786689, metadata !72, metadata !"dout", metadata !12, i32 33554555, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!208 = metadata !{i32 123, i32 67, metadata !72, null}
!209 = metadata !{i32 786688, metadata !210, metadata !"tmp", metadata !12, i32 124, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!210 = metadata !{i32 786443, metadata !72, i32 123, i32 73, metadata !12, i32 11} ; [ DW_TAG_lexical_block ]
!211 = metadata !{i32 124, i32 22, metadata !210, null}
!212 = metadata !{i32 125, i32 9, metadata !210, null}
!213 = metadata !{i32 126, i32 9, metadata !210, null}
!214 = metadata !{i32 127, i32 5, metadata !210, null}
