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
@_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE4time = internal global i32 0, align 4 ; [#uses=13 type=i32*]
@_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE11attackSlope = internal global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@_ZGVZ8envelopeRN3hls6streamIfEES2_iiiiiiE11attackSlope = internal global i8 0 ; [#uses=2 type=i8*]
@_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE10decaySlope = internal global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@_ZGVZ8envelopeRN3hls6streamIfEES2_iiiiiiE10decaySlope = internal global i8 0 ; [#uses=2 type=i8*]
@_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE12releaseSlope = internal global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@_ZGVZ8envelopeRN3hls6streamIfEES2_iiiiiiE12releaseSlope = internal global i8 0 ; [#uses=2 type=i8*]
@_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE11releaseTime = internal global i32 0, align 4 ; [#uses=4 type=i32*]
@_ZGVZ8envelopeRN3hls6streamIfEES2_iiiiiiE11releaseTime = internal global i8 0 ; [#uses=2 type=i8*]
@_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE11sustainTime = internal global i32 0, align 4 ; [#uses=8 type=i32*]
@_ZGVZ8envelopeRN3hls6streamIfEES2_iiiiiiE11sustainTime = internal global i8 0 ; [#uses=2 type=i8*]
@_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE4wait = internal global i32 0, align 4 ; [#uses=3 type=i32*]
@_IO_2_1_stdin_ = external global %"class.hls::stream" ; [#uses=0 type=%"class.hls::stream"*]
@_IO_2_1_stdout_ = external global %"class.hls::stream" ; [#uses=0 type=%"class.hls::stream"*]
@_IO_2_1_stderr_ = external global %"class.hls::stream" ; [#uses=0 type=%"class.hls::stream"*]
@sys_nerr = external global i32                   ; [#uses=0 type=i32*]
@_sys_nerr = external global i32                  ; [#uses=0 type=i32*]
@signgam = external global i32                    ; [#uses=0 type=i32*]

; [#uses=0]
define void @_Z8envelopeRN3hls6streamIfEES2_iiiiii(%"class.hls::stream"* %wave_in, %"class.hls::stream"* %wave_out, i32 %press, i32 %attackDuration, i32 %decayDuration, i32 %sustainAmplitude, i32 %sustainDuration, i32 %releaseDuration) nounwind uwtable {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=3 type=%"class.hls::stream"**]
  %2 = alloca %"class.hls::stream"*, align 8      ; [#uses=3 type=%"class.hls::stream"**]
  %3 = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %4 = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %5 = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %6 = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %7 = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %8 = alloca i32, align 4                        ; [#uses=4 type=i32*]
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
  store i32 %sustainAmplitude, i32* %6, align 4
  call void @llvm.dbg.declare(metadata !{i32* %6}, metadata !122), !dbg !123 ; [debug line = 15:6] [debug variable = sustainAmplitude]
  store i32 %sustainDuration, i32* %7, align 4
  call void @llvm.dbg.declare(metadata !{i32* %7}, metadata !124), !dbg !125 ; [debug line = 16:6] [debug variable = sustainDuration]
  store i32 %releaseDuration, i32* %8, align 4
  call void @llvm.dbg.declare(metadata !{i32* %8}, metadata !126), !dbg !127 ; [debug line = 17:6] [debug variable = releaseDuration]
  call void (...)* @_ssdm_InlineSelf(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !128 ; [debug line = 20:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !130 ; [debug line = 22:1]
  %9 = load %"class.hls::stream"** %1, align 8, !dbg !131 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 24:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream"* %9, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !131 ; [debug line = 24:1]
  %10 = load %"class.hls::stream"** %2, align 8, !dbg !132 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream"* %10, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !132 ; [debug line = 25:1]
  %11 = load i32* %3, align 4, !dbg !133          ; [#uses=1 type=i32] [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %11, i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !133 ; [debug line = 27:1]
  %12 = load i32* %4, align 4, !dbg !134          ; [#uses=1 type=i32] [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %12, i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !134 ; [debug line = 28:1]
  %13 = load i32* %5, align 4, !dbg !135          ; [#uses=1 type=i32] [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %13, i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !135 ; [debug line = 29:1]
  %14 = load i32* %6, align 4, !dbg !136          ; [#uses=1 type=i32] [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %14, i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !136 ; [debug line = 30:1]
  %15 = load i32* %7, align 4, !dbg !137          ; [#uses=1 type=i32] [debug line = 31:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %15, i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !137 ; [debug line = 31:1]
  %16 = load i32* %8, align 4, !dbg !138          ; [#uses=1 type=i32] [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %16, i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !138 ; [debug line = 32:1]
  %17 = load i8* @_ZGVZ8envelopeRN3hls6streamIfEES2_iiiiiiE11attackSlope, align 1, !dbg !139 ; [#uses=1 type=i8] [debug line = 35:52]
  %18 = icmp eq i8 %17, 0, !dbg !139              ; [#uses=1 type=i1] [debug line = 35:52]
  br i1 %18, label %19, label %23, !dbg !139      ; [debug line = 35:52]

; <label>:19                                      ; preds = %0
  %20 = load i32* %4, align 4, !dbg !139          ; [#uses=1 type=i32] [debug line = 35:52]
  %21 = sitofp i32 %20 to float, !dbg !139        ; [#uses=1 type=float] [debug line = 35:52]
  %22 = fdiv float 2.000000e+00, %21, !dbg !139   ; [#uses=1 type=float] [debug line = 35:52]
  store float %22, float* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE11attackSlope, align 4, !dbg !139 ; [debug line = 35:52]
  store i8 1, i8* @_ZGVZ8envelopeRN3hls6streamIfEES2_iiiiiiE11attackSlope, !dbg !139 ; [debug line = 35:52]
  br label %23, !dbg !139                         ; [debug line = 35:52]

; <label>:23                                      ; preds = %19, %0
  %24 = load i8* @_ZGVZ8envelopeRN3hls6streamIfEES2_iiiiiiE10decaySlope, align 1, !dbg !140 ; [#uses=1 type=i8] [debug line = 36:90]
  %25 = icmp eq i8 %24, 0, !dbg !140              ; [#uses=1 type=i1] [debug line = 36:90]
  br i1 %25, label %26, label %35, !dbg !140      ; [debug line = 36:90]

; <label>:26                                      ; preds = %23
  %27 = load i32* %6, align 4, !dbg !140          ; [#uses=1 type=i32] [debug line = 36:90]
  %28 = sub nsw i32 %27, 2, !dbg !140             ; [#uses=1 type=i32] [debug line = 36:90]
  %29 = sitofp i32 %28 to float, !dbg !140        ; [#uses=1 type=float] [debug line = 36:90]
  %30 = load i32* %5, align 4, !dbg !140          ; [#uses=1 type=i32] [debug line = 36:90]
  %31 = load i32* %4, align 4, !dbg !140          ; [#uses=1 type=i32] [debug line = 36:90]
  %32 = sub nsw i32 %30, %31, !dbg !140           ; [#uses=1 type=i32] [debug line = 36:90]
  %33 = sitofp i32 %32 to float, !dbg !140        ; [#uses=1 type=float] [debug line = 36:90]
  %34 = fdiv float %29, %33, !dbg !140            ; [#uses=1 type=float] [debug line = 36:90]
  store float %34, float* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE10decaySlope, align 4, !dbg !140 ; [debug line = 36:90]
  store i8 1, i8* @_ZGVZ8envelopeRN3hls6streamIfEES2_iiiiiiE10decaySlope, !dbg !140 ; [debug line = 36:90]
  br label %35, !dbg !140                         ; [debug line = 36:90]

; <label>:35                                      ; preds = %26, %23
  %36 = load i8* @_ZGVZ8envelopeRN3hls6streamIfEES2_iiiiiiE12releaseSlope, align 1, !dbg !141 ; [#uses=1 type=i8] [debug line = 37:91]
  %37 = icmp eq i8 %36, 0, !dbg !141              ; [#uses=1 type=i1] [debug line = 37:91]
  br i1 %37, label %38, label %47, !dbg !141      ; [debug line = 37:91]

; <label>:38                                      ; preds = %35
  %39 = load i32* %6, align 4, !dbg !141          ; [#uses=1 type=i32] [debug line = 37:91]
  %40 = sub nsw i32 0, %39, !dbg !141             ; [#uses=1 type=i32] [debug line = 37:91]
  %41 = sitofp i32 %40 to float, !dbg !141        ; [#uses=1 type=float] [debug line = 37:91]
  %42 = load i32* %8, align 4, !dbg !141          ; [#uses=1 type=i32] [debug line = 37:91]
  %43 = load i32* %7, align 4, !dbg !141          ; [#uses=1 type=i32] [debug line = 37:91]
  %44 = sub nsw i32 %42, %43, !dbg !141           ; [#uses=1 type=i32] [debug line = 37:91]
  %45 = sitofp i32 %44 to float, !dbg !141        ; [#uses=1 type=float] [debug line = 37:91]
  %46 = fdiv float %41, %45, !dbg !141            ; [#uses=1 type=float] [debug line = 37:91]
  store float %46, float* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE12releaseSlope, align 4, !dbg !141 ; [debug line = 37:91]
  store i8 1, i8* @_ZGVZ8envelopeRN3hls6streamIfEES2_iiiiiiE12releaseSlope, !dbg !141 ; [debug line = 37:91]
  br label %47, !dbg !141                         ; [debug line = 37:91]

; <label>:47                                      ; preds = %38, %35
  call void @llvm.dbg.declare(metadata !{float* %resultAmplitude}, metadata !142), !dbg !143 ; [debug line = 39:8] [debug variable = resultAmplitude]
  %48 = load i8* @_ZGVZ8envelopeRN3hls6streamIfEES2_iiiiiiE11releaseTime, align 1, !dbg !144 ; [#uses=1 type=i8] [debug line = 41:42]
  %49 = icmp eq i8 %48, 0, !dbg !144              ; [#uses=1 type=i1] [debug line = 41:42]
  br i1 %49, label %50, label %52, !dbg !144      ; [debug line = 41:42]

; <label>:50                                      ; preds = %47
  %51 = load i32* %8, align 4, !dbg !144          ; [#uses=1 type=i32] [debug line = 41:42]
  store i32 %51, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE11releaseTime, align 4, !dbg !144 ; [debug line = 41:42]
  store i8 1, i8* @_ZGVZ8envelopeRN3hls6streamIfEES2_iiiiiiE11releaseTime, !dbg !144 ; [debug line = 41:42]
  br label %52, !dbg !144                         ; [debug line = 41:42]

; <label>:52                                      ; preds = %50, %47
  %53 = load i8* @_ZGVZ8envelopeRN3hls6streamIfEES2_iiiiiiE11sustainTime, align 1, !dbg !145 ; [#uses=1 type=i8] [debug line = 42:42]
  %54 = icmp eq i8 %53, 0, !dbg !145              ; [#uses=1 type=i1] [debug line = 42:42]
  br i1 %54, label %55, label %57, !dbg !145      ; [debug line = 42:42]

; <label>:55                                      ; preds = %52
  %56 = load i32* %7, align 4, !dbg !145          ; [#uses=1 type=i32] [debug line = 42:42]
  store i32 %56, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE11sustainTime, align 4, !dbg !145 ; [debug line = 42:42]
  store i8 1, i8* @_ZGVZ8envelopeRN3hls6streamIfEES2_iiiiiiE11sustainTime, !dbg !145 ; [debug line = 42:42]
  br label %57, !dbg !145                         ; [debug line = 42:42]

; <label>:57                                      ; preds = %55, %52
  %58 = load %"class.hls::stream"** %1, align 8, !dbg !146 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 45:2]
  call void @_ZN3hls6streamIfErsERf(%"class.hls::stream"* %58, float* %resultAmplitude), !dbg !146 ; [debug line = 45:2]
  %59 = load i32* %3, align 4, !dbg !147          ; [#uses=1 type=i32] [debug line = 47:2]
  %60 = icmp ne i32 %59, 0, !dbg !147             ; [#uses=1 type=i1] [debug line = 47:2]
  br i1 %60, label %61, label %62, !dbg !147      ; [debug line = 47:2]

; <label>:61                                      ; preds = %57
  store i32 0, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE4wait, align 4, !dbg !148 ; [debug line = 48:3]
  br label %72, !dbg !148                         ; [debug line = 48:3]

; <label>:62                                      ; preds = %57
  %63 = load i32* %3, align 4, !dbg !149          ; [#uses=1 type=i32] [debug line = 49:7]
  %64 = icmp ne i32 %63, 0, !dbg !149             ; [#uses=1 type=i1] [debug line = 49:7]
  br i1 %64, label %71, label %65, !dbg !149      ; [debug line = 49:7]

; <label>:65                                      ; preds = %62
  %66 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE4time, align 4, !dbg !149 ; [#uses=1 type=i32] [debug line = 49:7]
  %67 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE11sustainTime, align 4, !dbg !149 ; [#uses=1 type=i32] [debug line = 49:7]
  %68 = icmp slt i32 %66, %67, !dbg !149          ; [#uses=1 type=i1] [debug line = 49:7]
  br i1 %68, label %69, label %71, !dbg !149      ; [debug line = 49:7]

; <label>:69                                      ; preds = %65
  %70 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE11sustainTime, align 4, !dbg !150 ; [#uses=1 type=i32] [debug line = 50:3]
  store i32 %70, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE4time, align 4, !dbg !150 ; [debug line = 50:3]
  br label %71, !dbg !150                         ; [debug line = 50:3]

; <label>:71                                      ; preds = %69, %65, %62
  br label %72

; <label>:72                                      ; preds = %71, %61
  %73 = load i32* %3, align 4, !dbg !151          ; [#uses=1 type=i32] [debug line = 52:2]
  %74 = icmp sge i32 %73, 1, !dbg !151            ; [#uses=1 type=i1] [debug line = 52:2]
  br i1 %74, label %75, label %85, !dbg !151      ; [debug line = 52:2]

; <label>:75                                      ; preds = %72
  %76 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE4time, align 4, !dbg !151 ; [#uses=1 type=i32] [debug line = 52:2]
  %77 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE11sustainTime, align 4, !dbg !151 ; [#uses=1 type=i32] [debug line = 52:2]
  %78 = sub nsw i32 %77, 1, !dbg !151             ; [#uses=1 type=i32] [debug line = 52:2]
  %79 = icmp eq i32 %76, %78, !dbg !151           ; [#uses=1 type=i1] [debug line = 52:2]
  br i1 %79, label %80, label %85, !dbg !151      ; [debug line = 52:2]

; <label>:80                                      ; preds = %75
  %81 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE11sustainTime, align 4, !dbg !152 ; [#uses=1 type=i32] [debug line = 53:3]
  %82 = add nsw i32 %81, 1, !dbg !152             ; [#uses=1 type=i32] [debug line = 53:3]
  store i32 %82, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE11sustainTime, align 4, !dbg !152 ; [debug line = 53:3]
  %83 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE11releaseTime, align 4, !dbg !154 ; [#uses=1 type=i32] [debug line = 54:3]
  %84 = add nsw i32 %83, 1, !dbg !154             ; [#uses=1 type=i32] [debug line = 54:3]
  store i32 %84, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE11releaseTime, align 4, !dbg !154 ; [debug line = 54:3]
  br label %85, !dbg !155                         ; [debug line = 55:2]

; <label>:85                                      ; preds = %80, %75, %72
  %86 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE4wait, align 4, !dbg !156 ; [#uses=1 type=i32] [debug line = 57:2]
  %87 = icmp ne i32 %86, 0, !dbg !156             ; [#uses=1 type=i1] [debug line = 57:2]
  br i1 %87, label %88, label %89, !dbg !156      ; [debug line = 57:2]

; <label>:88                                      ; preds = %85
  store i32 0, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE4time, align 4, !dbg !157 ; [debug line = 58:3]
  br label %89, !dbg !159                         ; [debug line = 59:2]

; <label>:89                                      ; preds = %88, %85
  %90 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE4time, align 4, !dbg !160 ; [#uses=1 type=i32] [debug line = 61:2]
  %91 = load i32* %4, align 4, !dbg !160          ; [#uses=1 type=i32] [debug line = 61:2]
  %92 = icmp slt i32 %90, %91, !dbg !160          ; [#uses=1 type=i1] [debug line = 61:2]
  br i1 %92, label %93, label %100, !dbg !160     ; [debug line = 61:2]

; <label>:93                                      ; preds = %89
  %94 = load float* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE11attackSlope, align 4, !dbg !161 ; [#uses=1 type=float] [debug line = 62:3]
  %95 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE4time, align 4, !dbg !161 ; [#uses=1 type=i32] [debug line = 62:3]
  %96 = sitofp i32 %95 to float, !dbg !161        ; [#uses=1 type=float] [debug line = 62:3]
  %97 = fmul float %94, %96, !dbg !161            ; [#uses=1 type=float] [debug line = 62:3]
  %98 = load float* %resultAmplitude, align 4, !dbg !161 ; [#uses=1 type=float] [debug line = 62:3]
  %99 = fmul float %98, %97, !dbg !161            ; [#uses=1 type=float] [debug line = 62:3]
  store float %99, float* %resultAmplitude, align 4, !dbg !161 ; [debug line = 62:3]
  br label %143, !dbg !163                        ; [debug line = 63:2]

; <label>:100                                     ; preds = %89
  %101 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE4time, align 4, !dbg !164 ; [#uses=1 type=i32] [debug line = 65:7]
  %102 = load i32* %5, align 4, !dbg !164         ; [#uses=1 type=i32] [debug line = 65:7]
  %103 = icmp slt i32 %101, %102, !dbg !164       ; [#uses=1 type=i1] [debug line = 65:7]
  br i1 %103, label %104, label %114, !dbg !164   ; [debug line = 65:7]

; <label>:104                                     ; preds = %100
  %105 = load float* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE10decaySlope, align 4, !dbg !165 ; [#uses=1 type=float] [debug line = 66:3]
  %106 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE4time, align 4, !dbg !165 ; [#uses=1 type=i32] [debug line = 66:3]
  %107 = load i32* %4, align 4, !dbg !165         ; [#uses=1 type=i32] [debug line = 66:3]
  %108 = sub nsw i32 %106, %107, !dbg !165        ; [#uses=1 type=i32] [debug line = 66:3]
  %109 = sitofp i32 %108 to float, !dbg !165      ; [#uses=1 type=float] [debug line = 66:3]
  %110 = fmul float %105, %109, !dbg !165         ; [#uses=1 type=float] [debug line = 66:3]
  %111 = fadd float %110, 2.000000e+00, !dbg !165 ; [#uses=1 type=float] [debug line = 66:3]
  %112 = load float* %resultAmplitude, align 4, !dbg !165 ; [#uses=1 type=float] [debug line = 66:3]
  %113 = fmul float %112, %111, !dbg !165         ; [#uses=1 type=float] [debug line = 66:3]
  store float %113, float* %resultAmplitude, align 4, !dbg !165 ; [debug line = 66:3]
  br label %142, !dbg !167                        ; [debug line = 67:2]

; <label>:114                                     ; preds = %100
  %115 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE4time, align 4, !dbg !168 ; [#uses=1 type=i32] [debug line = 69:7]
  %116 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE11sustainTime, align 4, !dbg !168 ; [#uses=1 type=i32] [debug line = 69:7]
  %117 = icmp slt i32 %115, %116, !dbg !168       ; [#uses=1 type=i1] [debug line = 69:7]
  br i1 %117, label %118, label %123, !dbg !168   ; [debug line = 69:7]

; <label>:118                                     ; preds = %114
  %119 = load i32* %6, align 4, !dbg !169         ; [#uses=1 type=i32] [debug line = 70:3]
  %120 = sitofp i32 %119 to float, !dbg !169      ; [#uses=1 type=float] [debug line = 70:3]
  %121 = load float* %resultAmplitude, align 4, !dbg !169 ; [#uses=1 type=float] [debug line = 70:3]
  %122 = fmul float %121, %120, !dbg !169         ; [#uses=1 type=float] [debug line = 70:3]
  store float %122, float* %resultAmplitude, align 4, !dbg !169 ; [debug line = 70:3]
  br label %141, !dbg !171                        ; [debug line = 71:2]

; <label>:123                                     ; preds = %114
  %124 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE4time, align 4, !dbg !172 ; [#uses=1 type=i32] [debug line = 73:7]
  %125 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE11releaseTime, align 4, !dbg !172 ; [#uses=1 type=i32] [debug line = 73:7]
  %126 = icmp slt i32 %124, %125, !dbg !172       ; [#uses=1 type=i1] [debug line = 73:7]
  br i1 %126, label %127, label %139, !dbg !172   ; [debug line = 73:7]

; <label>:127                                     ; preds = %123
  %128 = load float* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE12releaseSlope, align 4, !dbg !173 ; [#uses=1 type=float] [debug line = 74:3]
  %129 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE4time, align 4, !dbg !173 ; [#uses=1 type=i32] [debug line = 74:3]
  %130 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE11sustainTime, align 4, !dbg !173 ; [#uses=1 type=i32] [debug line = 74:3]
  %131 = sub nsw i32 %129, %130, !dbg !173        ; [#uses=1 type=i32] [debug line = 74:3]
  %132 = sitofp i32 %131 to float, !dbg !173      ; [#uses=1 type=float] [debug line = 74:3]
  %133 = fmul float %128, %132, !dbg !173         ; [#uses=1 type=float] [debug line = 74:3]
  %134 = load i32* %6, align 4, !dbg !173         ; [#uses=1 type=i32] [debug line = 74:3]
  %135 = sitofp i32 %134 to float, !dbg !173      ; [#uses=1 type=float] [debug line = 74:3]
  %136 = fadd float %133, %135, !dbg !173         ; [#uses=1 type=float] [debug line = 74:3]
  %137 = load float* %resultAmplitude, align 4, !dbg !173 ; [#uses=1 type=float] [debug line = 74:3]
  %138 = fmul float %137, %136, !dbg !173         ; [#uses=1 type=float] [debug line = 74:3]
  store float %138, float* %resultAmplitude, align 4, !dbg !173 ; [debug line = 74:3]
  br label %140, !dbg !175                        ; [debug line = 75:2]

; <label>:139                                     ; preds = %123
  store float 0.000000e+00, float* %resultAmplitude, align 4, !dbg !176 ; [debug line = 78:3]
  store i32 1, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE4wait, align 4, !dbg !178 ; [debug line = 79:3]
  br label %140

; <label>:140                                     ; preds = %139, %127
  br label %141

; <label>:141                                     ; preds = %140, %118
  br label %142

; <label>:142                                     ; preds = %141, %104
  br label %143

; <label>:143                                     ; preds = %142, %93
  %144 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE4time, align 4, !dbg !179 ; [#uses=1 type=i32] [debug line = 82:2]
  %145 = add nsw i32 %144, 1, !dbg !179           ; [#uses=1 type=i32] [debug line = 82:2]
  store i32 %145, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE4time, align 4, !dbg !179 ; [debug line = 82:2]
  %146 = load %"class.hls::stream"** %2, align 8, !dbg !180 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 84:2]
  call void @_ZN3hls6streamIfElsERKf(%"class.hls::stream"* %146, float* %resultAmplitude), !dbg !180 ; [debug line = 84:2]
  ret void, !dbg !181                             ; [debug line = 85:1]
}

; [#uses=19]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_InlineSelf(...) nounwind

; [#uses=9]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIfErsERf(%"class.hls::stream"* %this, float* %rdata) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca float*, align 8                     ; [#uses=2 type=float**]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !182), !dbg !184 ; [debug line = 101:48] [debug variable = this]
  store float* %rdata, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !185), !dbg !186 ; [debug line = 101:75] [debug variable = rdata]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  %4 = load float** %2, align 8, !dbg !187        ; [#uses=1 type=float*] [debug line = 102:9]
  call void @_ZN3hls6streamIfE4readERf(%"class.hls::stream"* %3, float* %4), !dbg !187 ; [debug line = 102:9]
  ret void, !dbg !189                             ; [debug line = 103:5]
}

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIfElsERKf(%"class.hls::stream"* %this, float* %wdata) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca float*, align 8                     ; [#uses=2 type=float**]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !190), !dbg !191 ; [debug line = 105:48] [debug variable = this]
  store float* %wdata, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !192), !dbg !193 ; [debug line = 105:81] [debug variable = wdata]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  %4 = load float** %2, align 8, !dbg !194        ; [#uses=1 type=float*] [debug line = 106:9]
  call void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream"* %3, float* %4), !dbg !194 ; [debug line = 106:9]
  ret void, !dbg !196                             ; [debug line = 107:5]
}

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream"* %this, float* %din) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca float*, align 8                     ; [#uses=2 type=float**]
  %tmp = alloca float, align 4                    ; [#uses=2 type=float*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !197), !dbg !198 ; [debug line = 144:48] [debug variable = this]
  store float* %din, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !199), !dbg !200 ; [debug line = 144:74] [debug variable = din]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{float* %tmp}, metadata !201), !dbg !203 ; [debug line = 145:22] [debug variable = tmp]
  %4 = load float** %2, align 8, !dbg !204        ; [#uses=1 type=float*] [debug line = 145:31]
  %5 = load float* %4, align 4, !dbg !204         ; [#uses=1 type=float] [debug line = 145:31]
  store float %5, float* %tmp, align 4, !dbg !204 ; [debug line = 145:31]
  %6 = getelementptr inbounds %"class.hls::stream"* %3, i32 0, i32 0, !dbg !205 ; [#uses=1 type=float*] [debug line = 146:9]
  call void (...)* @_ssdm_StreamWrite(float* %6, float* %tmp) nounwind, !dbg !205 ; [debug line = 146:9]
  ret void, !dbg !206                             ; [debug line = 147:5]
}

; [#uses=1]
declare void @_ssdm_StreamWrite(...) nounwind

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIfE4readERf(%"class.hls::stream"* %this, float* %dout) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca float*, align 8                     ; [#uses=2 type=float**]
  %tmp = alloca float, align 4                    ; [#uses=2 type=float*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !207), !dbg !208 ; [debug line = 123:48] [debug variable = this]
  store float* %dout, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !209), !dbg !210 ; [debug line = 123:67] [debug variable = dout]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{float* %tmp}, metadata !211), !dbg !213 ; [debug line = 124:22] [debug variable = tmp]
  %4 = getelementptr inbounds %"class.hls::stream"* %3, i32 0, i32 0, !dbg !214 ; [#uses=1 type=float*] [debug line = 125:9]
  call void (...)* @_ssdm_StreamRead(float* %4, float* %tmp) nounwind, !dbg !214 ; [debug line = 125:9]
  %5 = load float* %tmp, align 4, !dbg !215       ; [#uses=1 type=float] [debug line = 126:9]
  %6 = load float** %2, align 8, !dbg !215        ; [#uses=1 type=float*] [debug line = 126:9]
  store float %5, float* %6, align 4, !dbg !215   ; [debug line = 126:9]
  ret void, !dbg !216                             ; [debug line = 127:5]
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
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"envelope", metadata !"envelope", metadata !"_Z8envelopeRN3hls6streamIfEES2_iiiiii", metadata !6, i32 7, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, %"class.hls::stream"*, i32, i32, i32, i32, i32, i32)* @_Z8envelopeRN3hls6streamIfEES2_iiiiii, null, null, metadata !20, i32 19} ; [ DW_TAG_subprogram ]
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
!69 = metadata !{i32 786478, i32 0, metadata !11, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !12, i32 105, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfElsERKf, null, metadata !40, metadata !20, i32 105} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786478, i32 0, metadata !11, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !12, i32 144, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfE5writeERKf, null, metadata !58, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786478, i32 0, metadata !11, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !12, i32 101, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfErsERf, null, metadata !36, metadata !20, i32 101} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 786478, i32 0, metadata !11, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !12, i32 123, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfE4readERf, null, metadata !51, metadata !20, i32 123} ; [ DW_TAG_subprogram ]
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !85, metadata !86, metadata !87, metadata !89, metadata !90}
!75 = metadata !{i32 786484, i32 0, metadata !5, metadata !"time", metadata !"time", metadata !"", metadata !6, i32 34, metadata !68, i32 1, i32 1, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE4time} ; [ DW_TAG_variable ]
!76 = metadata !{i32 786484, i32 0, metadata !5, metadata !"attackSlope", metadata !"attackSlope", metadata !"", metadata !6, i32 35, metadata !15, i32 1, i32 1, float* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE11attackSlope} ; [ DW_TAG_variable ]
!77 = metadata !{i32 786484, i32 0, metadata !5, metadata !"decaySlope", metadata !"decaySlope", metadata !"", metadata !6, i32 36, metadata !15, i32 1, i32 1, float* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE10decaySlope} ; [ DW_TAG_variable ]
!78 = metadata !{i32 786484, i32 0, metadata !5, metadata !"releaseSlope", metadata !"releaseSlope", metadata !"", metadata !6, i32 37, metadata !15, i32 1, i32 1, float* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE12releaseSlope} ; [ DW_TAG_variable ]
!79 = metadata !{i32 786484, i32 0, metadata !5, metadata !"releaseTime", metadata !"releaseTime", metadata !"", metadata !6, i32 41, metadata !68, i32 1, i32 1, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE11releaseTime} ; [ DW_TAG_variable ]
!80 = metadata !{i32 786484, i32 0, metadata !5, metadata !"sustainTime", metadata !"sustainTime", metadata !"", metadata !6, i32 42, metadata !68, i32 1, i32 1, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE11sustainTime} ; [ DW_TAG_variable ]
!81 = metadata !{i32 786484, i32 0, metadata !5, metadata !"wait", metadata !"wait", metadata !"", metadata !6, i32 43, metadata !68, i32 1, i32 1, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiiiiiE4wait} ; [ DW_TAG_variable ]
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
!92 = metadata !{void (%"class.hls::stream"*, %"class.hls::stream"*, i32, i32, i32, i32, i32, i32)* @_Z8envelopeRN3hls6streamIfEES2_iiiiii, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98}
!93 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!94 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!96 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!97 = metadata !{metadata !"kernel_arg_name", metadata !"wave_in", metadata !"wave_out", metadata !"press", metadata !"attackDuration", metadata !"decayDuration", metadata !"sustainAmplitude", metadata !"sustainDuration", metadata !"releaseDuration"}
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
!122 = metadata !{i32 786689, metadata !5, metadata !"sustainAmplitude", metadata !6, i32 100663311, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 15, i32 6, metadata !5, null}
!124 = metadata !{i32 786689, metadata !5, metadata !"sustainDuration", metadata !6, i32 117440528, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 16, i32 6, metadata !5, null}
!126 = metadata !{i32 786689, metadata !5, metadata !"releaseDuration", metadata !6, i32 134217745, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 17, i32 6, metadata !5, null}
!128 = metadata !{i32 20, i32 1, metadata !129, null}
!129 = metadata !{i32 786443, metadata !5, i32 19, i32 2, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 22, i32 1, metadata !129, null}
!131 = metadata !{i32 24, i32 1, metadata !129, null}
!132 = metadata !{i32 25, i32 1, metadata !129, null}
!133 = metadata !{i32 27, i32 1, metadata !129, null}
!134 = metadata !{i32 28, i32 1, metadata !129, null}
!135 = metadata !{i32 29, i32 1, metadata !129, null}
!136 = metadata !{i32 30, i32 1, metadata !129, null}
!137 = metadata !{i32 31, i32 1, metadata !129, null}
!138 = metadata !{i32 32, i32 1, metadata !129, null}
!139 = metadata !{i32 35, i32 52, metadata !129, null}
!140 = metadata !{i32 36, i32 90, metadata !129, null}
!141 = metadata !{i32 37, i32 91, metadata !129, null}
!142 = metadata !{i32 786688, metadata !129, metadata !"resultAmplitude", metadata !6, i32 39, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 39, i32 8, metadata !129, null}
!144 = metadata !{i32 41, i32 42, metadata !129, null}
!145 = metadata !{i32 42, i32 42, metadata !129, null}
!146 = metadata !{i32 45, i32 2, metadata !129, null}
!147 = metadata !{i32 47, i32 2, metadata !129, null}
!148 = metadata !{i32 48, i32 3, metadata !129, null}
!149 = metadata !{i32 49, i32 7, metadata !129, null}
!150 = metadata !{i32 50, i32 3, metadata !129, null}
!151 = metadata !{i32 52, i32 2, metadata !129, null}
!152 = metadata !{i32 53, i32 3, metadata !153, null}
!153 = metadata !{i32 786443, metadata !129, i32 52, i32 43, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 54, i32 3, metadata !153, null}
!155 = metadata !{i32 55, i32 2, metadata !153, null}
!156 = metadata !{i32 57, i32 2, metadata !129, null}
!157 = metadata !{i32 58, i32 3, metadata !158, null}
!158 = metadata !{i32 786443, metadata !129, i32 57, i32 10, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 59, i32 2, metadata !158, null}
!160 = metadata !{i32 61, i32 2, metadata !129, null}
!161 = metadata !{i32 62, i32 3, metadata !162, null}
!162 = metadata !{i32 786443, metadata !129, i32 61, i32 27, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 63, i32 2, metadata !162, null}
!164 = metadata !{i32 65, i32 7, metadata !129, null}
!165 = metadata !{i32 66, i32 3, metadata !166, null}
!166 = metadata !{i32 786443, metadata !129, i32 65, i32 31, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 67, i32 2, metadata !166, null}
!168 = metadata !{i32 69, i32 7, metadata !129, null}
!169 = metadata !{i32 70, i32 3, metadata !170, null}
!170 = metadata !{i32 786443, metadata !129, i32 69, i32 30, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 71, i32 2, metadata !170, null}
!172 = metadata !{i32 73, i32 7, metadata !129, null}
!173 = metadata !{i32 74, i32 3, metadata !174, null}
!174 = metadata !{i32 786443, metadata !129, i32 73, i32 29, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 75, i32 2, metadata !174, null}
!176 = metadata !{i32 78, i32 3, metadata !177, null}
!177 = metadata !{i32 786443, metadata !129, i32 77, i32 7, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 79, i32 3, metadata !177, null}
!179 = metadata !{i32 82, i32 2, metadata !129, null}
!180 = metadata !{i32 84, i32 2, metadata !129, null}
!181 = metadata !{i32 85, i32 1, metadata !129, null}
!182 = metadata !{i32 786689, metadata !71, metadata !"this", metadata !12, i32 16777317, metadata !183, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!183 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!184 = metadata !{i32 101, i32 48, metadata !71, null}
!185 = metadata !{i32 786689, metadata !71, metadata !"rdata", metadata !12, i32 33554533, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!186 = metadata !{i32 101, i32 75, metadata !71, null}
!187 = metadata !{i32 102, i32 9, metadata !188, null}
!188 = metadata !{i32 786443, metadata !71, i32 101, i32 82, metadata !12, i32 10} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 103, i32 5, metadata !188, null}
!190 = metadata !{i32 786689, metadata !69, metadata !"this", metadata !12, i32 16777321, metadata !183, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!191 = metadata !{i32 105, i32 48, metadata !69, null}
!192 = metadata !{i32 786689, metadata !69, metadata !"wdata", metadata !12, i32 33554537, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!193 = metadata !{i32 105, i32 81, metadata !69, null}
!194 = metadata !{i32 106, i32 9, metadata !195, null}
!195 = metadata !{i32 786443, metadata !69, i32 105, i32 88, metadata !12, i32 8} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 107, i32 5, metadata !195, null}
!197 = metadata !{i32 786689, metadata !70, metadata !"this", metadata !12, i32 16777360, metadata !183, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!198 = metadata !{i32 144, i32 48, metadata !70, null}
!199 = metadata !{i32 786689, metadata !70, metadata !"din", metadata !12, i32 33554576, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!200 = metadata !{i32 144, i32 74, metadata !70, null}
!201 = metadata !{i32 786688, metadata !202, metadata !"tmp", metadata !12, i32 145, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!202 = metadata !{i32 786443, metadata !70, i32 144, i32 79, metadata !12, i32 9} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 145, i32 22, metadata !202, null}
!204 = metadata !{i32 145, i32 31, metadata !202, null}
!205 = metadata !{i32 146, i32 9, metadata !202, null}
!206 = metadata !{i32 147, i32 5, metadata !202, null}
!207 = metadata !{i32 786689, metadata !72, metadata !"this", metadata !12, i32 16777339, metadata !183, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!208 = metadata !{i32 123, i32 48, metadata !72, null}
!209 = metadata !{i32 786689, metadata !72, metadata !"dout", metadata !12, i32 33554555, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!210 = metadata !{i32 123, i32 67, metadata !72, null}
!211 = metadata !{i32 786688, metadata !212, metadata !"tmp", metadata !12, i32 124, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!212 = metadata !{i32 786443, metadata !72, i32 123, i32 73, metadata !12, i32 11} ; [ DW_TAG_lexical_block ]
!213 = metadata !{i32 124, i32 22, metadata !212, null}
!214 = metadata !{i32 125, i32 9, metadata !212, null}
!215 = metadata !{i32 126, i32 9, metadata !212, null}
!216 = metadata !{i32 127, i32 5, metadata !212, null}
