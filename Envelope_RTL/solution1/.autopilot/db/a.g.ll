; ModuleID = '/root/repo/new/ECE1373_GhostSynth/modules/Envelope/Envelope_RTL/solution1/.autopilot/db/a.g.bc'
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
@_ZZ8envelopeRN3hls6streamIfEES2_iiifiE9lastpress = internal global i32 0, align 4 ; [#uses=2 type=i32*]
@_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11releaseTime = internal global i32 0, align 4 ; [#uses=5 type=i32*]
@_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11sustainTime = internal global i32 0, align 4 ; [#uses=6 type=i32*]
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
  %3 = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %4 = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %5 = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %6 = alloca float, align 4                      ; [#uses=8 type=float*]
  %7 = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %attackSlope = alloca float, align 4            ; [#uses=2 type=float*]
  %decaySlope = alloca float, align 4             ; [#uses=2 type=float*]
  %releaseSlope = alloca float, align 4           ; [#uses=2 type=float*]
  %resultAmplitude = alloca float, align 4        ; [#uses=11 type=float*]
  store %"class.hls::stream"* %wave_in, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !110), !dbg !111 ; [debug line = 9:23] [debug variable = wave_in]
  store %"class.hls::stream"* %wave_out, %"class.hls::stream"** %2, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %2}, metadata !112), !dbg !113 ; [debug line = 10:23] [debug variable = wave_out]
  store i32 %press, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !114), !dbg !115 ; [debug line = 12:6] [debug variable = press]
  store i32 %attackDuration, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !116), !dbg !117 ; [debug line = 13:6] [debug variable = attackDuration]
  store i32 %decayDuration, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !118), !dbg !119 ; [debug line = 14:6] [debug variable = decayDuration]
  store float %sustainAmplitude, float* %6, align 4
  call void @llvm.dbg.declare(metadata !{float* %6}, metadata !120), !dbg !121 ; [debug line = 15:8] [debug variable = sustainAmplitude]
  store i32 %releaseDuration, i32* %7, align 4
  call void @llvm.dbg.declare(metadata !{i32* %7}, metadata !122), !dbg !123 ; [debug line = 16:6] [debug variable = releaseDuration]
  call void (...)* @_ssdm_InlineSelf(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !124 ; [debug line = 19:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !126 ; [debug line = 21:1]
  %8 = load %"class.hls::stream"** %1, align 8, !dbg !127 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 23:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream"* %8, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !127 ; [debug line = 23:1]
  %9 = load %"class.hls::stream"** %2, align 8, !dbg !128 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 24:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream"* %9, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !128 ; [debug line = 24:1]
  %10 = load i32* %3, align 4, !dbg !129          ; [#uses=1 type=i32] [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %10, i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !129 ; [debug line = 26:1]
  %11 = load i32* %4, align 4, !dbg !130          ; [#uses=1 type=i32] [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %11, i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !130 ; [debug line = 27:1]
  %12 = load i32* %5, align 4, !dbg !131          ; [#uses=1 type=i32] [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %12, i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !131 ; [debug line = 28:1]
  %13 = load float* %6, align 4, !dbg !132        ; [#uses=1 type=float] [debug line = 29:1]
  %14 = fpext float %13 to double, !dbg !132      ; [#uses=1 type=double] [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(double %14, i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !132 ; [debug line = 29:1]
  %15 = load i32* %7, align 4, !dbg !133          ; [#uses=1 type=i32] [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %15, i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !133 ; [debug line = 30:1]
  call void @llvm.dbg.declare(metadata !{float* %attackSlope}, metadata !134), !dbg !135 ; [debug line = 34:8] [debug variable = attackSlope]
  %16 = load i32* %4, align 4, !dbg !136          ; [#uses=1 type=i32] [debug line = 34:45]
  %17 = sitofp i32 %16 to float, !dbg !136        ; [#uses=1 type=float] [debug line = 34:45]
  %18 = fdiv float 1.000000e+00, %17, !dbg !136   ; [#uses=1 type=float] [debug line = 34:45]
  store float %18, float* %attackSlope, align 4, !dbg !136 ; [debug line = 34:45]
  call void @llvm.dbg.declare(metadata !{float* %decaySlope}, metadata !137), !dbg !138 ; [debug line = 35:8] [debug variable = decaySlope]
  %19 = load float* %6, align 4, !dbg !139        ; [#uses=1 type=float] [debug line = 35:83]
  %20 = fsub float %19, 1.000000e+00, !dbg !139   ; [#uses=1 type=float] [debug line = 35:83]
  %21 = load i32* %5, align 4, !dbg !139          ; [#uses=1 type=i32] [debug line = 35:83]
  %22 = load i32* %4, align 4, !dbg !139          ; [#uses=1 type=i32] [debug line = 35:83]
  %23 = sub nsw i32 %21, %22, !dbg !139           ; [#uses=1 type=i32] [debug line = 35:83]
  %24 = sitofp i32 %23 to float, !dbg !139        ; [#uses=1 type=float] [debug line = 35:83]
  %25 = fdiv float %20, %24, !dbg !139            ; [#uses=1 type=float] [debug line = 35:83]
  store float %25, float* %decaySlope, align 4, !dbg !139 ; [debug line = 35:83]
  call void @llvm.dbg.declare(metadata !{float* %releaseSlope}, metadata !140), !dbg !141 ; [debug line = 36:8] [debug variable = releaseSlope]
  %26 = load float* %6, align 4, !dbg !142        ; [#uses=1 type=float] [debug line = 36:82]
  %27 = fsub float 0.000000e+00, %26, !dbg !142   ; [#uses=1 type=float] [debug line = 36:82]
  %28 = load i32* %7, align 4, !dbg !142          ; [#uses=1 type=i32] [debug line = 36:82]
  %29 = load i32* %5, align 4, !dbg !142          ; [#uses=1 type=i32] [debug line = 36:82]
  %30 = sub nsw i32 %28, %29, !dbg !142           ; [#uses=1 type=i32] [debug line = 36:82]
  %31 = sitofp i32 %30 to float, !dbg !142        ; [#uses=1 type=float] [debug line = 36:82]
  %32 = fdiv float %27, %31, !dbg !142            ; [#uses=1 type=float] [debug line = 36:82]
  store float %32, float* %releaseSlope, align 4, !dbg !142 ; [debug line = 36:82]
  call void @llvm.dbg.declare(metadata !{float* %resultAmplitude}, metadata !143), !dbg !144 ; [debug line = 38:8] [debug variable = resultAmplitude]
  %33 = load float* %6, align 4, !dbg !145        ; [#uses=1 type=float] [debug line = 40:2]
  %34 = fpext float %33 to double, !dbg !145      ; [#uses=1 type=double] [debug line = 40:2]
  %35 = fcmp ogt double %34, 1.000000e+00, !dbg !145 ; [#uses=1 type=i1] [debug line = 40:2]
  br i1 %35, label %36, label %37, !dbg !145      ; [debug line = 40:2]

; <label>:36                                      ; preds = %0
  store float 1.000000e+00, float* %6, align 4, !dbg !146 ; [debug line = 41:3]
  br label %37, !dbg !146                         ; [debug line = 41:3]

; <label>:37                                      ; preds = %36, %0
  %38 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE9lastpress, align 4, !dbg !147 ; [#uses=1 type=i32] [debug line = 47:2]
  %39 = icmp eq i32 %38, 0, !dbg !147             ; [#uses=1 type=i1] [debug line = 47:2]
  br i1 %39, label %40, label %47, !dbg !147      ; [debug line = 47:2]

; <label>:40                                      ; preds = %37
  %41 = load i32* %3, align 4, !dbg !147          ; [#uses=1 type=i32] [debug line = 47:2]
  %42 = icmp ne i32 %41, 0, !dbg !147             ; [#uses=1 type=i1] [debug line = 47:2]
  br i1 %42, label %43, label %47, !dbg !147      ; [debug line = 47:2]

; <label>:43                                      ; preds = %40
  %44 = load i32* %7, align 4, !dbg !148          ; [#uses=1 type=i32] [debug line = 48:3]
  store i32 %44, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11releaseTime, align 4, !dbg !148 ; [debug line = 48:3]
  %45 = load i32* %5, align 4, !dbg !150          ; [#uses=1 type=i32] [debug line = 49:3]
  %46 = add nsw i32 %45, 1, !dbg !150             ; [#uses=1 type=i32] [debug line = 49:3]
  store i32 %46, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11sustainTime, align 4, !dbg !150 ; [debug line = 49:3]
  br label %47, !dbg !151                         ; [debug line = 50:2]

; <label>:47                                      ; preds = %43, %40, %37
  %48 = load i32* %3, align 4, !dbg !152          ; [#uses=1 type=i32] [debug line = 52:2]
  store i32 %48, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE9lastpress, align 4, !dbg !152 ; [debug line = 52:2]
  %49 = load %"class.hls::stream"** %1, align 8, !dbg !153 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 57:2]
  call void @_ZN3hls6streamIfErsERf(%"class.hls::stream"* %49, float* %resultAmplitude), !dbg !153 ; [debug line = 57:2]
  %50 = load i32* %3, align 4, !dbg !154          ; [#uses=1 type=i32] [debug line = 59:2]
  %51 = icmp ne i32 %50, 0, !dbg !154             ; [#uses=1 type=i1] [debug line = 59:2]
  br i1 %51, label %52, label %57, !dbg !154      ; [debug line = 59:2]

; <label>:52                                      ; preds = %47
  store i32 0, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4wait, align 4, !dbg !155 ; [debug line = 60:3]
  %53 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11sustainTime, align 4, !dbg !157 ; [#uses=1 type=i32] [debug line = 61:3]
  %54 = add nsw i32 %53, 1, !dbg !157             ; [#uses=1 type=i32] [debug line = 61:3]
  store i32 %54, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11sustainTime, align 4, !dbg !157 ; [debug line = 61:3]
  %55 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11releaseTime, align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 62:3]
  %56 = add nsw i32 %55, 1, !dbg !158             ; [#uses=1 type=i32] [debug line = 62:3]
  store i32 %56, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11releaseTime, align 4, !dbg !158 ; [debug line = 62:3]
  br label %57, !dbg !159                         ; [debug line = 63:2]

; <label>:57                                      ; preds = %52, %47
  %58 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4wait, align 4, !dbg !160 ; [#uses=1 type=i32] [debug line = 65:2]
  %59 = icmp ne i32 %58, 0, !dbg !160             ; [#uses=1 type=i1] [debug line = 65:2]
  br i1 %59, label %60, label %64, !dbg !160      ; [debug line = 65:2]

; <label>:60                                      ; preds = %57
  store i32 0, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time, align 4, !dbg !161 ; [debug line = 66:3]
  %61 = load i32* %7, align 4, !dbg !163          ; [#uses=1 type=i32] [debug line = 67:3]
  store i32 %61, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11releaseTime, align 4, !dbg !163 ; [debug line = 67:3]
  %62 = load i32* %5, align 4, !dbg !164          ; [#uses=1 type=i32] [debug line = 68:3]
  %63 = add nsw i32 %62, 1, !dbg !164             ; [#uses=1 type=i32] [debug line = 68:3]
  store i32 %63, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11sustainTime, align 4, !dbg !164 ; [debug line = 68:3]
  br label %64, !dbg !165                         ; [debug line = 69:2]

; <label>:64                                      ; preds = %60, %57
  %65 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time, align 4, !dbg !166 ; [#uses=1 type=i32] [debug line = 71:2]
  %66 = load i32* %4, align 4, !dbg !166          ; [#uses=1 type=i32] [debug line = 71:2]
  %67 = icmp slt i32 %65, %66, !dbg !166          ; [#uses=1 type=i1] [debug line = 71:2]
  br i1 %67, label %68, label %75, !dbg !166      ; [debug line = 71:2]

; <label>:68                                      ; preds = %64
  %69 = load float* %attackSlope, align 4, !dbg !167 ; [#uses=1 type=float] [debug line = 72:3]
  %70 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time, align 4, !dbg !167 ; [#uses=1 type=i32] [debug line = 72:3]
  %71 = sitofp i32 %70 to float, !dbg !167        ; [#uses=1 type=float] [debug line = 72:3]
  %72 = fmul float %69, %71, !dbg !167            ; [#uses=1 type=float] [debug line = 72:3]
  %73 = load float* %resultAmplitude, align 4, !dbg !167 ; [#uses=1 type=float] [debug line = 72:3]
  %74 = fmul float %73, %72, !dbg !167            ; [#uses=1 type=float] [debug line = 72:3]
  store float %74, float* %resultAmplitude, align 4, !dbg !167 ; [debug line = 72:3]
  br label %116, !dbg !169                        ; [debug line = 73:2]

; <label>:75                                      ; preds = %64
  %76 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time, align 4, !dbg !170 ; [#uses=1 type=i32] [debug line = 75:7]
  %77 = load i32* %5, align 4, !dbg !170          ; [#uses=1 type=i32] [debug line = 75:7]
  %78 = icmp slt i32 %76, %77, !dbg !170          ; [#uses=1 type=i1] [debug line = 75:7]
  br i1 %78, label %79, label %89, !dbg !170      ; [debug line = 75:7]

; <label>:79                                      ; preds = %75
  %80 = load float* %decaySlope, align 4, !dbg !171 ; [#uses=1 type=float] [debug line = 76:3]
  %81 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time, align 4, !dbg !171 ; [#uses=1 type=i32] [debug line = 76:3]
  %82 = load i32* %4, align 4, !dbg !171          ; [#uses=1 type=i32] [debug line = 76:3]
  %83 = sub nsw i32 %81, %82, !dbg !171           ; [#uses=1 type=i32] [debug line = 76:3]
  %84 = sitofp i32 %83 to float, !dbg !171        ; [#uses=1 type=float] [debug line = 76:3]
  %85 = fmul float %80, %84, !dbg !171            ; [#uses=1 type=float] [debug line = 76:3]
  %86 = fadd float %85, 1.000000e+00, !dbg !171   ; [#uses=1 type=float] [debug line = 76:3]
  %87 = load float* %resultAmplitude, align 4, !dbg !171 ; [#uses=1 type=float] [debug line = 76:3]
  %88 = fmul float %87, %86, !dbg !171            ; [#uses=1 type=float] [debug line = 76:3]
  store float %88, float* %resultAmplitude, align 4, !dbg !171 ; [debug line = 76:3]
  br label %115, !dbg !173                        ; [debug line = 77:2]

; <label>:89                                      ; preds = %75
  %90 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time, align 4, !dbg !174 ; [#uses=1 type=i32] [debug line = 79:7]
  %91 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11sustainTime, align 4, !dbg !174 ; [#uses=1 type=i32] [debug line = 79:7]
  %92 = icmp slt i32 %90, %91, !dbg !174          ; [#uses=1 type=i1] [debug line = 79:7]
  br i1 %92, label %93, label %97, !dbg !174      ; [debug line = 79:7]

; <label>:93                                      ; preds = %89
  %94 = load float* %6, align 4, !dbg !175        ; [#uses=1 type=float] [debug line = 80:3]
  %95 = load float* %resultAmplitude, align 4, !dbg !175 ; [#uses=1 type=float] [debug line = 80:3]
  %96 = fmul float %95, %94, !dbg !175            ; [#uses=1 type=float] [debug line = 80:3]
  store float %96, float* %resultAmplitude, align 4, !dbg !175 ; [debug line = 80:3]
  br label %114, !dbg !177                        ; [debug line = 81:2]

; <label>:97                                      ; preds = %89
  %98 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time, align 4, !dbg !178 ; [#uses=1 type=i32] [debug line = 83:7]
  %99 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11releaseTime, align 4, !dbg !178 ; [#uses=1 type=i32] [debug line = 83:7]
  %100 = icmp slt i32 %98, %99, !dbg !178         ; [#uses=1 type=i1] [debug line = 83:7]
  br i1 %100, label %101, label %112, !dbg !178   ; [debug line = 83:7]

; <label>:101                                     ; preds = %97
  %102 = load float* %releaseSlope, align 4, !dbg !179 ; [#uses=1 type=float] [debug line = 84:3]
  %103 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time, align 4, !dbg !179 ; [#uses=1 type=i32] [debug line = 84:3]
  %104 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11sustainTime, align 4, !dbg !179 ; [#uses=1 type=i32] [debug line = 84:3]
  %105 = sub nsw i32 %103, %104, !dbg !179        ; [#uses=1 type=i32] [debug line = 84:3]
  %106 = sitofp i32 %105 to float, !dbg !179      ; [#uses=1 type=float] [debug line = 84:3]
  %107 = fmul float %102, %106, !dbg !179         ; [#uses=1 type=float] [debug line = 84:3]
  %108 = load float* %6, align 4, !dbg !179       ; [#uses=1 type=float] [debug line = 84:3]
  %109 = fadd float %107, %108, !dbg !179         ; [#uses=1 type=float] [debug line = 84:3]
  %110 = load float* %resultAmplitude, align 4, !dbg !179 ; [#uses=1 type=float] [debug line = 84:3]
  %111 = fmul float %110, %109, !dbg !179         ; [#uses=1 type=float] [debug line = 84:3]
  store float %111, float* %resultAmplitude, align 4, !dbg !179 ; [debug line = 84:3]
  br label %113, !dbg !181                        ; [debug line = 85:2]

; <label>:112                                     ; preds = %97
  store float 0.000000e+00, float* %resultAmplitude, align 4, !dbg !182 ; [debug line = 88:3]
  store i32 1, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4wait, align 4, !dbg !184 ; [debug line = 89:3]
  br label %113

; <label>:113                                     ; preds = %112, %101
  br label %114

; <label>:114                                     ; preds = %113, %93
  br label %115

; <label>:115                                     ; preds = %114, %79
  br label %116

; <label>:116                                     ; preds = %115, %68
  %117 = load i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time, align 4, !dbg !185 ; [#uses=1 type=i32] [debug line = 92:2]
  %118 = add nsw i32 %117, 1, !dbg !185           ; [#uses=1 type=i32] [debug line = 92:2]
  store i32 %118, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time, align 4, !dbg !185 ; [debug line = 92:2]
  %119 = load %"class.hls::stream"** %2, align 8, !dbg !186 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 94:2]
  call void @_ZN3hls6streamIfElsERKf(%"class.hls::stream"* %119, float* %resultAmplitude), !dbg !186 ; [debug line = 94:2]
  ret void, !dbg !187                             ; [debug line = 95:1]
}

; [#uses=21]
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
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !188), !dbg !190 ; [debug line = 101:48] [debug variable = this]
  store float* %rdata, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !191), !dbg !192 ; [debug line = 101:75] [debug variable = rdata]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  %4 = load float** %2, align 8, !dbg !193        ; [#uses=1 type=float*] [debug line = 102:9]
  call void @_ZN3hls6streamIfE4readERf(%"class.hls::stream"* %3, float* %4), !dbg !193 ; [debug line = 102:9]
  ret void, !dbg !195                             ; [debug line = 103:5]
}

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIfElsERKf(%"class.hls::stream"* %this, float* %wdata) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca float*, align 8                     ; [#uses=2 type=float**]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !196), !dbg !197 ; [debug line = 105:48] [debug variable = this]
  store float* %wdata, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !198), !dbg !199 ; [debug line = 105:81] [debug variable = wdata]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  %4 = load float** %2, align 8, !dbg !200        ; [#uses=1 type=float*] [debug line = 106:9]
  call void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream"* %3, float* %4), !dbg !200 ; [debug line = 106:9]
  ret void, !dbg !202                             ; [debug line = 107:5]
}

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream"* %this, float* %din) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca float*, align 8                     ; [#uses=2 type=float**]
  %tmp = alloca float, align 4                    ; [#uses=2 type=float*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !203), !dbg !204 ; [debug line = 144:48] [debug variable = this]
  store float* %din, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !205), !dbg !206 ; [debug line = 144:74] [debug variable = din]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{float* %tmp}, metadata !207), !dbg !209 ; [debug line = 145:22] [debug variable = tmp]
  %4 = load float** %2, align 8, !dbg !210        ; [#uses=1 type=float*] [debug line = 145:31]
  %5 = load float* %4, align 4, !dbg !210         ; [#uses=1 type=float] [debug line = 145:31]
  store float %5, float* %tmp, align 4, !dbg !210 ; [debug line = 145:31]
  %6 = getelementptr inbounds %"class.hls::stream"* %3, i32 0, i32 0, !dbg !211 ; [#uses=1 type=float*] [debug line = 146:9]
  call void (...)* @_ssdm_StreamWrite(float* %6, float* %tmp) nounwind, !dbg !211 ; [debug line = 146:9]
  ret void, !dbg !212                             ; [debug line = 147:5]
}

; [#uses=1]
declare void @_ssdm_StreamWrite(...) nounwind

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIfE4readERf(%"class.hls::stream"* %this, float* %dout) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca float*, align 8                     ; [#uses=2 type=float**]
  %tmp = alloca float, align 4                    ; [#uses=2 type=float*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !213), !dbg !214 ; [debug line = 123:48] [debug variable = this]
  store float* %dout, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !215), !dbg !216 ; [debug line = 123:67] [debug variable = dout]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{float* %tmp}, metadata !217), !dbg !219 ; [debug line = 124:22] [debug variable = tmp]
  %4 = getelementptr inbounds %"class.hls::stream"* %3, i32 0, i32 0, !dbg !220 ; [#uses=1 type=float*] [debug line = 125:9]
  call void (...)* @_ssdm_StreamRead(float* %4, float* %tmp) nounwind, !dbg !220 ; [debug line = 125:9]
  %5 = load float* %tmp, align 4, !dbg !221       ; [#uses=1 type=float] [debug line = 126:9]
  %6 = load float** %2, align 8, !dbg !221        ; [#uses=1 type=float*] [debug line = 126:9]
  store float %5, float* %6, align 4, !dbg !221   ; [debug line = 126:9]
  ret void, !dbg !222                             ; [debug line = 127:5]
}

; [#uses=1]
declare void @_ssdm_StreamRead(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!90, !97, !103, !105, !108}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/root/repo/new/ECE1373_GhostSynth/modules/Envelope/Envelope_RTL/solution1/.autopilot/db/Envelope.pragma.2.cpp", metadata !"/root/repo/new/ECE1373_GhostSynth/modules/Envelope", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !73} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !69, metadata !70, metadata !71, metadata !72}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"envelope", metadata !"envelope", metadata !"_Z8envelopeRN3hls6streamIfEES2_iiifi", metadata !6, i32 7, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, %"class.hls::stream"*, i32, i32, i32, float, i32)* @_Z8envelopeRN3hls6streamIfEES2_iiifi, null, null, metadata !20, i32 18} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"src/Envelope.cpp", metadata !"/root/repo/new/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !68, metadata !68, metadata !68, metadata !15, metadata !68}
!9 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_reference_type ]
!10 = metadata !{i32 786434, metadata !11, metadata !"stream<float>", metadata !12, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !13, i32 0, null, metadata !66} ; [ DW_TAG_class_type ]
!11 = metadata !{i32 786489, null, metadata !"hls", metadata !12, i32 69} ; [ DW_TAG_namespace ]
!12 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot/hls_stream.h", metadata !"/root/repo/new/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
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
!74 = metadata !{metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !83, metadata !84, metadata !85, metadata !87, metadata !88}
!75 = metadata !{i32 786484, i32 0, metadata !5, metadata !"time", metadata !"time", metadata !"", metadata !6, i32 32, metadata !68, i32 1, i32 1, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4time} ; [ DW_TAG_variable ]
!76 = metadata !{i32 786484, i32 0, metadata !5, metadata !"lastpress", metadata !"lastpress", metadata !"", metadata !6, i32 33, metadata !68, i32 1, i32 1, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE9lastpress} ; [ DW_TAG_variable ]
!77 = metadata !{i32 786484, i32 0, metadata !5, metadata !"releaseTime", metadata !"releaseTime", metadata !"", metadata !6, i32 43, metadata !68, i32 1, i32 1, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11releaseTime} ; [ DW_TAG_variable ]
!78 = metadata !{i32 786484, i32 0, metadata !5, metadata !"sustainTime", metadata !"sustainTime", metadata !"", metadata !6, i32 44, metadata !68, i32 1, i32 1, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE11sustainTime} ; [ DW_TAG_variable ]
!79 = metadata !{i32 786484, i32 0, metadata !5, metadata !"wait", metadata !"wait", metadata !"", metadata !6, i32 55, metadata !68, i32 1, i32 1, i32* @_ZZ8envelopeRN3hls6streamIfEES2_iiifiE4wait} ; [ DW_TAG_variable ]
!80 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !81, i32 315, metadata !82, i32 0, i32 1, %"class.hls::stream"* @_IO_2_1_stdin_} ; [ DW_TAG_variable ]
!81 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/root/repo/new/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!82 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !81, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!83 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !81, i32 316, metadata !82, i32 0, i32 1, %"class.hls::stream"* @_IO_2_1_stdout_} ; [ DW_TAG_variable ]
!84 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !81, i32 317, metadata !82, i32 0, i32 1, %"class.hls::stream"* @_IO_2_1_stderr_} ; [ DW_TAG_variable ]
!85 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !86, i32 26, metadata !68, i32 0, i32 1, i32* @sys_nerr} ; [ DW_TAG_variable ]
!86 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/root/repo/new/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!87 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !86, i32 30, metadata !68, i32 0, i32 1, i32* @_sys_nerr} ; [ DW_TAG_variable ]
!88 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !89, i32 168, metadata !68, i32 0, i32 1, i32* @signgam} ; [ DW_TAG_variable ]
!89 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/root/repo/new/ECE1373_GhostSynth/modules/Envelope", null} ; [ DW_TAG_file_type ]
!90 = metadata !{void (%"class.hls::stream"*, %"class.hls::stream"*, i32, i32, i32, float, i32)* @_Z8envelopeRN3hls6streamIfEES2_iiifi, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96}
!91 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!92 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &", metadata !"int", metadata !"int", metadata !"int", metadata !"float", metadata !"int"}
!94 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!95 = metadata !{metadata !"kernel_arg_name", metadata !"wave_in", metadata !"wave_out", metadata !"press", metadata !"attackDuration", metadata !"decayDuration", metadata !"sustainAmplitude", metadata !"releaseDuration"}
!96 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!97 = metadata !{void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfElsERKf, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !96}
!98 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!99 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"const float &"}
!101 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!102 = metadata !{metadata !"kernel_arg_name", metadata !"wdata"}
!103 = metadata !{void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfE5writeERKf, metadata !98, metadata !99, metadata !100, metadata !101, metadata !104, metadata !96}
!104 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!105 = metadata !{void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfErsERf, metadata !98, metadata !99, metadata !106, metadata !101, metadata !107, metadata !96}
!106 = metadata !{metadata !"kernel_arg_type", metadata !"float &"}
!107 = metadata !{metadata !"kernel_arg_name", metadata !"rdata"}
!108 = metadata !{void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfE4readERf, metadata !98, metadata !99, metadata !106, metadata !101, metadata !109, metadata !96}
!109 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!110 = metadata !{i32 786689, metadata !5, metadata !"wave_in", metadata !6, i32 16777225, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!111 = metadata !{i32 9, i32 23, metadata !5, null}
!112 = metadata !{i32 786689, metadata !5, metadata !"wave_out", metadata !6, i32 33554442, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!113 = metadata !{i32 10, i32 23, metadata !5, null}
!114 = metadata !{i32 786689, metadata !5, metadata !"press", metadata !6, i32 50331660, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!115 = metadata !{i32 12, i32 6, metadata !5, null}
!116 = metadata !{i32 786689, metadata !5, metadata !"attackDuration", metadata !6, i32 67108877, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!117 = metadata !{i32 13, i32 6, metadata !5, null}
!118 = metadata !{i32 786689, metadata !5, metadata !"decayDuration", metadata !6, i32 83886094, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!119 = metadata !{i32 14, i32 6, metadata !5, null}
!120 = metadata !{i32 786689, metadata !5, metadata !"sustainAmplitude", metadata !6, i32 100663311, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 15, i32 8, metadata !5, null}
!122 = metadata !{i32 786689, metadata !5, metadata !"releaseDuration", metadata !6, i32 117440528, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 16, i32 6, metadata !5, null}
!124 = metadata !{i32 19, i32 1, metadata !125, null}
!125 = metadata !{i32 786443, metadata !5, i32 18, i32 2, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 21, i32 1, metadata !125, null}
!127 = metadata !{i32 23, i32 1, metadata !125, null}
!128 = metadata !{i32 24, i32 1, metadata !125, null}
!129 = metadata !{i32 26, i32 1, metadata !125, null}
!130 = metadata !{i32 27, i32 1, metadata !125, null}
!131 = metadata !{i32 28, i32 1, metadata !125, null}
!132 = metadata !{i32 29, i32 1, metadata !125, null}
!133 = metadata !{i32 30, i32 1, metadata !125, null}
!134 = metadata !{i32 786688, metadata !125, metadata !"attackSlope", metadata !6, i32 34, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 34, i32 8, metadata !125, null}
!136 = metadata !{i32 34, i32 45, metadata !125, null}
!137 = metadata !{i32 786688, metadata !125, metadata !"decaySlope", metadata !6, i32 35, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 35, i32 8, metadata !125, null}
!139 = metadata !{i32 35, i32 83, metadata !125, null}
!140 = metadata !{i32 786688, metadata !125, metadata !"releaseSlope", metadata !6, i32 36, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 36, i32 8, metadata !125, null}
!142 = metadata !{i32 36, i32 82, metadata !125, null}
!143 = metadata !{i32 786688, metadata !125, metadata !"resultAmplitude", metadata !6, i32 38, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!144 = metadata !{i32 38, i32 8, metadata !125, null}
!145 = metadata !{i32 40, i32 2, metadata !125, null}
!146 = metadata !{i32 41, i32 3, metadata !125, null}
!147 = metadata !{i32 47, i32 2, metadata !125, null}
!148 = metadata !{i32 48, i32 3, metadata !149, null}
!149 = metadata !{i32 786443, metadata !125, i32 47, i32 36, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 49, i32 3, metadata !149, null}
!151 = metadata !{i32 50, i32 2, metadata !149, null}
!152 = metadata !{i32 52, i32 2, metadata !125, null}
!153 = metadata !{i32 57, i32 2, metadata !125, null}
!154 = metadata !{i32 59, i32 2, metadata !125, null}
!155 = metadata !{i32 60, i32 3, metadata !156, null}
!156 = metadata !{i32 786443, metadata !125, i32 59, i32 16, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 61, i32 3, metadata !156, null}
!158 = metadata !{i32 62, i32 3, metadata !156, null}
!159 = metadata !{i32 63, i32 2, metadata !156, null}
!160 = metadata !{i32 65, i32 2, metadata !125, null}
!161 = metadata !{i32 66, i32 3, metadata !162, null}
!162 = metadata !{i32 786443, metadata !125, i32 65, i32 10, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 67, i32 3, metadata !162, null}
!164 = metadata !{i32 68, i32 3, metadata !162, null}
!165 = metadata !{i32 69, i32 2, metadata !162, null}
!166 = metadata !{i32 71, i32 2, metadata !125, null}
!167 = metadata !{i32 72, i32 3, metadata !168, null}
!168 = metadata !{i32 786443, metadata !125, i32 71, i32 27, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 73, i32 2, metadata !168, null}
!170 = metadata !{i32 75, i32 7, metadata !125, null}
!171 = metadata !{i32 76, i32 3, metadata !172, null}
!172 = metadata !{i32 786443, metadata !125, i32 75, i32 31, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 77, i32 2, metadata !172, null}
!174 = metadata !{i32 79, i32 7, metadata !125, null}
!175 = metadata !{i32 80, i32 3, metadata !176, null}
!176 = metadata !{i32 786443, metadata !125, i32 79, i32 30, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 81, i32 2, metadata !176, null}
!178 = metadata !{i32 83, i32 7, metadata !125, null}
!179 = metadata !{i32 84, i32 3, metadata !180, null}
!180 = metadata !{i32 786443, metadata !125, i32 83, i32 29, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 85, i32 2, metadata !180, null}
!182 = metadata !{i32 88, i32 3, metadata !183, null}
!183 = metadata !{i32 786443, metadata !125, i32 87, i32 7, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!184 = metadata !{i32 89, i32 3, metadata !183, null}
!185 = metadata !{i32 92, i32 2, metadata !125, null}
!186 = metadata !{i32 94, i32 2, metadata !125, null}
!187 = metadata !{i32 95, i32 1, metadata !125, null}
!188 = metadata !{i32 786689, metadata !71, metadata !"this", metadata !12, i32 16777317, metadata !189, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!189 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!190 = metadata !{i32 101, i32 48, metadata !71, null}
!191 = metadata !{i32 786689, metadata !71, metadata !"rdata", metadata !12, i32 33554533, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!192 = metadata !{i32 101, i32 75, metadata !71, null}
!193 = metadata !{i32 102, i32 9, metadata !194, null}
!194 = metadata !{i32 786443, metadata !71, i32 101, i32 82, metadata !12, i32 11} ; [ DW_TAG_lexical_block ]
!195 = metadata !{i32 103, i32 5, metadata !194, null}
!196 = metadata !{i32 786689, metadata !69, metadata !"this", metadata !12, i32 16777321, metadata !189, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!197 = metadata !{i32 105, i32 48, metadata !69, null}
!198 = metadata !{i32 786689, metadata !69, metadata !"wdata", metadata !12, i32 33554537, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!199 = metadata !{i32 105, i32 81, metadata !69, null}
!200 = metadata !{i32 106, i32 9, metadata !201, null}
!201 = metadata !{i32 786443, metadata !69, i32 105, i32 88, metadata !12, i32 9} ; [ DW_TAG_lexical_block ]
!202 = metadata !{i32 107, i32 5, metadata !201, null}
!203 = metadata !{i32 786689, metadata !70, metadata !"this", metadata !12, i32 16777360, metadata !189, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!204 = metadata !{i32 144, i32 48, metadata !70, null}
!205 = metadata !{i32 786689, metadata !70, metadata !"din", metadata !12, i32 33554576, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!206 = metadata !{i32 144, i32 74, metadata !70, null}
!207 = metadata !{i32 786688, metadata !208, metadata !"tmp", metadata !12, i32 145, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!208 = metadata !{i32 786443, metadata !70, i32 144, i32 79, metadata !12, i32 10} ; [ DW_TAG_lexical_block ]
!209 = metadata !{i32 145, i32 22, metadata !208, null}
!210 = metadata !{i32 145, i32 31, metadata !208, null}
!211 = metadata !{i32 146, i32 9, metadata !208, null}
!212 = metadata !{i32 147, i32 5, metadata !208, null}
!213 = metadata !{i32 786689, metadata !72, metadata !"this", metadata !12, i32 16777339, metadata !189, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!214 = metadata !{i32 123, i32 48, metadata !72, null}
!215 = metadata !{i32 786689, metadata !72, metadata !"dout", metadata !12, i32 33554555, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!216 = metadata !{i32 123, i32 67, metadata !72, null}
!217 = metadata !{i32 786688, metadata !218, metadata !"tmp", metadata !12, i32 124, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!218 = metadata !{i32 786443, metadata !72, i32 123, i32 73, metadata !12, i32 12} ; [ DW_TAG_lexical_block ]
!219 = metadata !{i32 124, i32 22, metadata !218, null}
!220 = metadata !{i32 125, i32 9, metadata !218, null}
!221 = metadata !{i32 126, i32 9, metadata !218, null}
!222 = metadata !{i32 127, i32 5, metadata !218, null}
