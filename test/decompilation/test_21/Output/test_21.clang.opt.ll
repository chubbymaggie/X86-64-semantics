; ModuleID = 'Output/test_21.clang.opt.bc'
source_filename = "Output/test_21.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl shiftit;"
module asm "  .type shiftit,@function"
module asm "shiftit:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size shiftit,0b-shiftit;"
module asm "  .cfi_endproc;"

%0 = type <{ [56 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x38 = internal constant %0 <{ [56 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00\00\00\00\005\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

; Function Attrs: naked
declare void @__mcsema_attach_call() #0

; Function Attrs: naked
declare void @__mcsema_attach_ret() #0

; Function Attrs: naked
declare void @__mcsema_detach_call() #0

; Function Attrs: naked
declare void @__mcsema_detach_call_value() #0

; Function Attrs: naked
declare void @__mcsema_detach_ret() #0

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = add i64 %1, -4, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  %EDI.4 = bitcast i64* %XDI to i32*, !mcsema_real_eip !4
  %EDI_val.5 = load i32, i32* %EDI.4, !mcsema_real_eip !4
  %5 = inttoptr i64 %3 to i32*, !mcsema_real_eip !4
  store i32 %EDI_val.5, i32* %5, !mcsema_real_eip !4
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !5
  %6 = add i64 %RBP_val.6, -16, !mcsema_real_eip !5
  %7 = inttoptr i64 %6 to i64*, !mcsema_real_eip !5
  %RSI_val.7 = load i64, i64* %XSI, !mcsema_real_eip !5
  store i64 %RSI_val.7, i64* %7, !mcsema_real_eip !5
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !6
  %8 = add i64 %RBP_val.8, -16, !mcsema_real_eip !6
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !6
  %10 = load i64, i64* %9, !mcsema_real_eip !6
  store i64 %10, i64* %XSI, !mcsema_real_eip !6
  %11 = inttoptr i64 %10 to i64*, !mcsema_real_eip !7
  %12 = load i64, i64* %11, !mcsema_real_eip !7
  store i64 %12, i64* %XSI, !mcsema_real_eip !7
  %13 = add i64 %RBP_val.8, -24, !mcsema_real_eip !8
  %14 = inttoptr i64 %13 to i64*, !mcsema_real_eip !8
  store i64 %12, i64* %14, !mcsema_real_eip !8
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !9
  %15 = add i64 %RBP_val.12, -4, !mcsema_real_eip !9
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !9
  %17 = inttoptr i64 %15 to i32*, !mcsema_real_eip !9
  %18 = load i32, i32* %17, !mcsema_real_eip !9
  %19 = zext i32 %18 to i64, !mcsema_real_eip !9
  store i64 %19, i64* %XDI, !mcsema_real_eip !9
  %20 = add i64 %RBP_val.12, -24, !mcsema_real_eip !10
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !10
  %22 = load i64, i64* %21, !mcsema_real_eip !10
  store i64 %22, i64* %XSI, !mcsema_real_eip !10
  %EDI_val.15 = load i32, i32* %EDI.4, !mcsema_real_eip !11
  %23 = zext i32 %EDI_val.15 to i64, !mcsema_real_eip !11
  store i64 %23, i64* %XDI, !mcsema_real_eip !11
  %EDI_val.17 = load i32, i32* %EDI.4, !mcsema_real_eip !12
  %24 = zext i32 %EDI_val.17 to i64, !mcsema_real_eip !12
  store i64 %24, i64* %XCX, !mcsema_real_eip !12
  %CL.19 = bitcast i64* %XCX to i8*, !mcsema_real_eip !13
  %CL_val.20 = load i8, i8* %CL.19, !mcsema_real_eip !13
  %CL_val.20.zext = zext i8 %CL_val.20 to i64, !mcsema_real_eip !13
  %25 = and i64 %CL_val.20.zext, 63, !mcsema_real_eip !13
  %26 = sub i64 %CL_val.20.zext, 1, !mcsema_real_eip !13
  %27 = icmp ne i64 %25, 0, !mcsema_real_eip !13
  %28 = select i1 %27, i64 %26, i64 0, !mcsema_real_eip !13
  %29 = select i1 %27, i64 1, i64 0, !mcsema_real_eip !13
  %30 = lshr i64 %22, %28, !mcsema_real_eip !13
  %31 = and i64 %30, 1, !mcsema_real_eip !13
  %32 = icmp ne i64 %31, 0, !mcsema_real_eip !13
  %33 = load i1, i1* %CF, !mcsema_real_eip !13
  %34 = select i1 %27, i1 %32, i1 %33, !mcsema_real_eip !13
  %35 = lshr i64 %30, %29, !mcsema_real_eip !13
  %36 = icmp eq i64 %25, 1, !mcsema_real_eip !13
  %37 = load i1, i1* %OF, !mcsema_real_eip !13
  %38 = and i64 %22, -9223372036854775808, !mcsema_real_eip !13
  %39 = icmp ne i64 %38, 0, !mcsema_real_eip !13
  %40 = select i1 %36, i1 %39, i1 %37, !mcsema_real_eip !13
  store i1 %40, i1* %OF, !mcsema_real_eip !13
  store i1 %34, i1* %CF, !mcsema_real_eip !13
  %41 = load i1, i1* %ZF, !mcsema_real_eip !13
  %42 = icmp eq i64 %35, 0, !mcsema_real_eip !13
  %43 = select i1 %27, i1 %42, i1 %41, !mcsema_real_eip !13
  store i1 %43, i1* %ZF, !mcsema_real_eip !13
  %44 = load i1, i1* %SF, !mcsema_real_eip !13
  %45 = icmp slt i64 %35, 0, !mcsema_real_eip !13
  %46 = select i1 %27, i1 %45, i1 %44, !mcsema_real_eip !13
  store i1 %46, i1* %SF, !mcsema_real_eip !13
  %47 = load i1, i1* %PF, !mcsema_real_eip !13
  %48 = trunc i64 %35 to i8, !mcsema_real_eip !13
  %49 = call i8 @llvm.ctpop.i8(i8 %48), !mcsema_real_eip !13
  %50 = trunc i8 %49 to i1, !mcsema_real_eip !13
  %51 = xor i1 %50, true, !mcsema_real_eip !13
  %52 = select i1 %27, i1 %51, i1 %47, !mcsema_real_eip !13
  store i1 %52, i1* %PF, !mcsema_real_eip !13
  store i64 %35, i64* %XSI, !mcsema_real_eip !13
  store i64 %35, i64* %21, !mcsema_real_eip !14
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !15
  %53 = add i64 %RBP_val.23, -24, !mcsema_real_eip !15
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !15
  %55 = load i64, i64* %54, !mcsema_real_eip !15
  store i64 %55, i64* %XSI, !mcsema_real_eip !15
  %56 = add i64 %RBP_val.23, -16, !mcsema_real_eip !16
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !16
  %58 = load i64, i64* %57, !mcsema_real_eip !16
  store i64 %58, i64* %XAX, !mcsema_real_eip !16
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !17
  store i64 %55, i64* %59, !mcsema_real_eip !17
  %RSP_val.27 = load i64, i64* %XSP, !mcsema_real_eip !18
  %60 = inttoptr i64 %RSP_val.27 to i64*, !mcsema_real_eip !18
  %61 = load i64, i64* %60, !mcsema_real_eip !18
  store i64 %61, i64* %XBP, !mcsema_real_eip !18
  %62 = add i64 %RSP_val.27, 8, !mcsema_real_eip !18
  store i64 %62, i64* %XSP, !mcsema_real_eip !18
  %63 = add i64 %62, 8, !mcsema_real_eip !19
  %64 = inttoptr i64 %62 to i64*, !mcsema_real_eip !19
  %65 = load i64, i64* %64, !mcsema_real_eip !19
  store i64 %65, i64* %XIP, !mcsema_real_eip !19
  store i64 %63, i64* %XSP, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @shiftit() #3

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 7}
!6 = !{i64 11}
!7 = !{i64 15}
!8 = !{i64 18}
!9 = !{i64 22}
!10 = !{i64 25}
!11 = !{i64 29}
!12 = !{i64 31}
!13 = !{i64 33}
!14 = !{i64 36}
!15 = !{i64 40}
!16 = !{i64 44}
!17 = !{i64 48}
!18 = !{i64 51}
!19 = !{i64 52}
