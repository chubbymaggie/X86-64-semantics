; ModuleID = 'Output/test_13.clang.trans.opt.bc'
source_filename = "Output/test_13.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @malloc(i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %_RSP_ptr_.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_3.i = alloca [48 x i8], align 8
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 48, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3.i, i64 0, i64 48
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %3 = bitcast i64* %RBX.i to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %5 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %6 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %7 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %8 = load i64, i64* %R8.i, align 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %9 = load i64, i64* %R9.i, align 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %10 = load i64, i64* %R10.i, align 8, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %11 = load i64, i64* %R11.i, align 8, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %12 = load i64, i64* %R12.i, align 8, !mcsema_real_eip !2
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %13 = load i64, i64* %R13.i, align 8, !mcsema_real_eip !2
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %14 = load i64, i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %15 = load i64, i64* %R15.i, align 8, !mcsema_real_eip !2
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %16 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %17 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %22 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %35 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %36 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %40 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %41 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %42 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %44 = bitcast i8* %43 to i64*
  %45 = load i64, i64* %44, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %46 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %47 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %48 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %49 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %50 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %66 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %67 = load i64, i64* %STACK_BASE.i, align 8, !mcsema_real_eip !2
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %68 = load i64, i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !2
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_.i = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3.i, i64 0, i64 40
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4.i, i64* %_allin_new_bt_.i, align 8
  %69 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %69, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3.i, i64 0, i64 8
  %70 = ptrtoint i8* %_new_gep_1.i to i64
  store volatile i64 %70, i64* %_RSP_ptr_.sroa.0.i, align 8
  %_new_gep_11.i = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3.i, i64 0, i64 32
  %_allin_new_bt_12.i = bitcast i8* %_new_gep_11.i to i64*
  store i64 %7, i64* %_allin_new_bt_12.i, align 8, !mcsema_real_eip !3
  %_new_gep_14.i = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3.i, i64 0, i64 28
  %71 = trunc i64 %6 to i32
  %72 = bitcast i8* %_new_gep_14.i to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !4
  %_new_gep_17.i = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3.i, i64 0, i64 24
  %73 = bitcast i8* %_new_gep_17.i to i32*
  store i32 0, i32* %73, align 8, !mcsema_real_eip !5
  %sext.i = shl i64 %6, 32
  %74 = ashr exact i64 %sext.i, 29
  %75 = tail call x86_64_sysvcc i64 @malloc(i64 %74), !mcsema_real_eip !6
  %_new_gep_23.i = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3.i, i64 0, i64 16
  %_allin_new_bt_24.i = bitcast i8* %_new_gep_23.i to i64*
  store i64 %75, i64* %_allin_new_bt_24.i, align 8, !mcsema_real_eip !7
  %76 = sub i32 0, %71, !mcsema_real_eip !8
  %77 = icmp slt i32 %76, 0
  %78 = and i32 %71, %76, !mcsema_real_eip !8
  %79 = icmp slt i32 %78, 0
  %tmp.i = xor i1 %77, %79
  br i1 %tmp.i, label %block_0x33.i, label %sub_0.exit, !mcsema_real_eip !9

block_0x33.i:                                     ; preds = %driverBlockRaw
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %80 = icmp ne i32 %71, 0
  %81 = icmp eq i32 %71, 0
  %82 = trunc i32 %76 to i8, !mcsema_real_eip !8
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !8
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = xor i32 %71, %76, !mcsema_real_eip !8
  %87 = and i32 %86, 16, !mcsema_real_eip !8
  %88 = icmp ne i32 %87, 0, !mcsema_real_eip !8
  %89 = inttoptr i64 %7 to i64*, !mcsema_real_eip !10
  %90 = load i64, i64* %89, align 8
  %_allin_new_bt_39.i = bitcast i8* %_new_gep_1.i to i64*
  store i64 %90, i64* %_allin_new_bt_39.i, align 8, !mcsema_real_eip !11
  %_allin_new_bt_45.i = bitcast [48 x i8]* %_local_stack_start_ptr_3.i to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_45.i, align 8, !mcsema_real_eip !12
  %91 = ptrtoint [48 x i8]* %_local_stack_start_ptr_3.i to i64
  store volatile i64 %91, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 %90, i64* %RAX.i, align 8, !mcsema_real_eip !12
  %92 = extractelement <2 x i64> %4, i32 0
  store i64 %92, i64* %RBX.i, align 8, !mcsema_real_eip !12
  store i64 %7, i64* %RCX.i, align 8, !mcsema_real_eip !12
  store i64 %5, i64* %RDX.i, align 8, !mcsema_real_eip !12
  store i64 %6, i64* %RSI.i, align 8, !mcsema_real_eip !12
  store i64 %90, i64* %RDI.i, align 8, !mcsema_real_eip !12
  store volatile i64 %91, i64* %RSP.i, align 8
  store volatile i64 %69, i64* %RBP.i, align 8
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !12
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !12
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !12
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !12
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !12
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !12
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !12
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !12
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !12
  store i1 %80, i1* %CF.i, align 1, !mcsema_real_eip !12
  store i1 %85, i1* %PF.i, align 1, !mcsema_real_eip !12
  store i1 %88, i1* %AF.i, align 1, !mcsema_real_eip !12
  store i1 %81, i1* %ZF.i, align 1, !mcsema_real_eip !12
  store i1 %77, i1* %SF.i, align 1, !mcsema_real_eip !12
  store i1 %79, i1* %OF.i, align 1, !mcsema_real_eip !12
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !12
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !12
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !12
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !12
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !12
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !12
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !12
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !12
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !12
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !12
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !12
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !12
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !12
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !12
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !12
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !12
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !12
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !12
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !12
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !12
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !12
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !12
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !12
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !12
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !12
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !12
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !12
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !12
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !12
  store i11 %50, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !12
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !12
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !12
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !12
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !12
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !12
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !12
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !12
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !12
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !12
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !12
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !12
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !12
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !12
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !12
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !12
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !12
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !12
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !12
  call void @llvm.trap()
  unreachable

sub_0.exit:                                       ; preds = %driverBlockRaw
  %93 = add i64 %75, 1, !mcsema_real_eip !13
  %94 = inttoptr i64 %93 to i8*
  store i8 2, i8* %94, align 1, !mcsema_real_eip !13
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_525.i = load i64, i64* %_RSP_ptr_.sroa.0.i, align 8
  %uadd352.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_525.i, i64 32)
  %95 = extractvalue { i64, i1 } %uadd352.i, 0
  %96 = xor i64 %95, %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_525.i, !mcsema_real_eip !14
  %97 = and i64 %96, 16, !mcsema_real_eip !14
  %98 = icmp ne i64 %97, 0, !mcsema_real_eip !14
  %99 = icmp slt i64 %95, 0
  %100 = icmp eq i64 %95, 0, !mcsema_real_eip !14
  %101 = xor i64 %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_525.i, -9223372036854775808, !mcsema_real_eip !14
  %102 = and i64 %96, %101, !mcsema_real_eip !14
  %103 = icmp slt i64 %102, 0
  %104 = trunc i64 %95 to i8, !mcsema_real_eip !14
  %105 = tail call i8 @llvm.ctpop.i8(i8 %104), !mcsema_real_eip !14
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  %108 = extractvalue { i64, i1 } %uadd352.i, 1
  store volatile i64 %95, i64* %_RSP_ptr_.sroa.0.i, align 8
  %109 = inttoptr i64 %95 to i64*, !mcsema_real_eip !15
  %110 = load i64, i64* %109, align 8
  store volatile i64 %110, i64* %_RBP_ptr_.sroa.0.i, align 8
  %111 = add i64 %95, 16, !mcsema_real_eip !16
  store volatile i64 %111, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 %75, i64* %RAX.i, align 8, !mcsema_real_eip !16
  %112 = bitcast i64* %RBX.i to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %112, align 8
  store i64 %5, i64* %RDX.i, align 8, !mcsema_real_eip !16
  store i64 %6, i64* %RSI.i, align 8, !mcsema_real_eip !16
  store i64 %74, i64* %RDI.i, align 8, !mcsema_real_eip !16
  store volatile i64 %111, i64* %RSP.i, align 8
  store volatile i64 %110, i64* %RBP.i, align 8
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !16
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !16
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !16
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !16
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !16
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !16
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !16
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !16
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !16
  store i1 %108, i1* %CF.i, align 1, !mcsema_real_eip !16
  store i1 %107, i1* %PF.i, align 1, !mcsema_real_eip !16
  store i1 %98, i1* %AF.i, align 1, !mcsema_real_eip !16
  store i1 %100, i1* %ZF.i, align 1, !mcsema_real_eip !16
  store i1 %99, i1* %SF.i, align 1, !mcsema_real_eip !16
  store i1 %103, i1* %OF.i, align 1, !mcsema_real_eip !16
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !16
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !16
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !16
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !16
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !16
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !16
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !16
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !16
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !16
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !16
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !16
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !16
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !16
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !16
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !16
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !16
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !16
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !16
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !16
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !16
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !16
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !16
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !16
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !16
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !16
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !16
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !16
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !16
  store i11 %50, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !16
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !16
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !16
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !16
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !16
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !16
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !16
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !16
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !16
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !16
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !16
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !16
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !16
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !16
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !16
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !16
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !16
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !16
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !16
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 48, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 8}
!4 = !{i64 12}
!5 = !{i64 15}
!6 = !{i64 30}
!7 = !{i64 35}
!8 = !{i64 42}
!9 = !{i64 45}
!10 = !{i64 59}
!11 = !{i64 63}
!12 = !{i64 71}
!13 = !{i64 125}
!14 = !{i64 129}
!15 = !{i64 133}
!16 = !{i64 134}
