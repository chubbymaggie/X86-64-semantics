; ModuleID = 'Output/test_25.clang.trans.opt.bc'
source_filename = "Output/test_25.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @strlen(i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %_RSP_ptr_.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_1.i = alloca [40 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [40 x i8], [40 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 40, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [40 x i8], [40 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 40
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %3 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %4 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %5 = load i64, i64* %RSI.i, align 8
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %6 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %7 = bitcast i64* %R8.i to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 8
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %9 = bitcast i64* %R10.i to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %11 = bitcast i64* %R12.i to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %13 = bitcast i64* %R14.i to <2 x i64>*
  %14 = load <2 x i64>, <2 x i64>* %13, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %15 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %16 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %17 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %21 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %34 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %35 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %40 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %41 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %42 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %43 = bitcast i8* %42 to i64*
  %44 = load i64, i64* %43, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %45 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %46 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %47 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %48 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %49 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %66 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %67 = load <2 x i64>, <2 x i64>* %66, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_.i = getelementptr inbounds [40 x i8], [40 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 32
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2.i, i64* %_allin_new_bt_.i, align 8
  %68 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %68, i64* %_RBP_ptr_.sroa.0.i, align 8
  %69 = ptrtoint [40 x i8]* %_local_stack_start_ptr_1.i to i64
  store volatile i64 %69, i64* %_RSP_ptr_.sroa.0.i, align 8
  %_new_gep_11.i = getelementptr inbounds [40 x i8], [40 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 28
  %70 = bitcast i8* %_new_gep_11.i to i32*
  store i32 0, i32* %70, align 4, !mcsema_real_eip !3
  %_new_gep_14.i = getelementptr inbounds [40 x i8], [40 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 24
  %71 = trunc i64 %6 to i32, !mcsema_real_eip !4
  %72 = bitcast i8* %_new_gep_14.i to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !4
  %_new_gep_17.i = getelementptr inbounds [40 x i8], [40 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 16
  %_allin_new_bt_18.i = bitcast i8* %_new_gep_17.i to i64*
  store i64 %5, i64* %_allin_new_bt_18.i, align 8, !mcsema_real_eip !5
  %_new_gep_20.i = getelementptr inbounds [40 x i8], [40 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 12
  %73 = bitcast i8* %_new_gep_20.i to i32*
  store i32 0, i32* %73, align 4, !mcsema_real_eip !6
  %74 = add i64 %5, 8, !mcsema_real_eip !7
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !7
  %76 = load i64, i64* %75, align 8, !mcsema_real_eip !7
  %77 = tail call x86_64_sysvcc i64 @strlen(i64 %76), !mcsema_real_eip !8
  %78 = and i64 %77, 4294967295
  %_new_gep_26.i = getelementptr inbounds [40 x i8], [40 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 8
  %79 = trunc i64 %77 to i32
  %80 = bitcast i8* %_new_gep_26.i to i32*
  store i32 %79, i32* %80, align 4, !mcsema_real_eip !9
  %_new_gep_29.i = getelementptr inbounds [40 x i8], [40 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 4
  %81 = bitcast i8* %_new_gep_29.i to i32*
  store i32 0, i32* %81, align 4, !mcsema_real_eip !10
  %82 = sub i32 0, %79, !mcsema_real_eip !11
  %83 = icmp slt i32 %82, 0
  %84 = and i32 %79, %82, !mcsema_real_eip !11
  %85 = icmp slt i32 %84, 0
  %tmp14.i = xor i1 %83, %85
  br i1 %tmp14.i, label %block_0x42.i.preheader, label %sub_0.exit, !mcsema_real_eip !12

block_0x42.i.preheader:                           ; preds = %driverBlockRaw
  %86 = bitcast i64* %_RBP_ptr_.sroa.0.i to i8**
  br label %block_0x42.i

block_0x42.i:                                     ; preds = %block_0x42.i.preheader, %block_0x42.block_0x42_crit_edge.i
  %87 = phi i32 [ %.pre26.i, %block_0x42.block_0x42_crit_edge.i ], [ 0, %block_0x42.i.preheader ]
  %88 = phi i64 [ %.pre.i, %block_0x42.block_0x42_crit_edge.i ], [ %5, %block_0x42.i.preheader ]
  %89 = phi i32 [ %104, %block_0x42.block_0x42_crit_edge.i ], [ 0, %block_0x42.i.preheader ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_31915.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_319.i5, %block_0x42.block_0x42_crit_edge.i ], [ %_new_gep_.i, %block_0x42.i.preheader ]
  %90 = sext i32 %89 to i64, !mcsema_real_eip !13
  %91 = add i64 %88, 8, !mcsema_real_eip !14
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !14
  %93 = load i64, i64* %92, align 8, !mcsema_real_eip !14
  %94 = add i64 %93, %90, !mcsema_real_eip !15
  %95 = inttoptr i64 %94 to i8*
  %96 = load i8, i8* %95, align 1, !mcsema_real_eip !15
  %97 = sext i8 %96 to i32, !mcsema_real_eip !15
  %_new_gep_44.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_31915.i, i64 -20
  %98 = bitcast i8* %_new_gep_44.i to i32*
  %99 = add i32 %97, %87
  store i32 %99, i32* %98, align 4, !mcsema_real_eip !16
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4910.i4 = load i8*, i8** %86, align 8
  %_new_gep_50.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4910.i4, i64 -28
  %100 = bitcast i8* %_new_gep_50.i to i32*
  %101 = load i32, i32* %100, align 4, !mcsema_real_eip !17
  %102 = add i32 %101, 1
  store i32 %102, i32* %100, align 4, !mcsema_real_eip !18
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_319.i5 = load i8*, i8** %86, align 8
  %_new_gep_32.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_319.i5, i64 -28
  %103 = bitcast i8* %_new_gep_32.i to i32*
  %104 = load i32, i32* %103, align 4, !mcsema_real_eip !19
  %_new_gep_35.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_319.i5, i64 -24
  %105 = bitcast i8* %_new_gep_35.i to i32*
  %106 = load i32, i32* %105, align 4, !mcsema_real_eip !11
  %107 = sub i32 %104, %106, !mcsema_real_eip !11
  %108 = xor i32 %107, %104, !mcsema_real_eip !11
  %109 = icmp slt i32 %107, 0
  %110 = xor i32 %106, %104, !mcsema_real_eip !11
  %111 = and i32 %108, %110, !mcsema_real_eip !11
  %112 = icmp slt i32 %111, 0
  %tmp.i = xor i1 %109, %112
  br i1 %tmp.i, label %block_0x42.block_0x42_crit_edge.i, label %block_0x36.block_0x6a_crit_edge.i, !mcsema_real_eip !12

block_0x42.block_0x42_crit_edge.i:                ; preds = %block_0x42.i
  %_new_gep_41.phi.trans.insert.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_319.i5, i64 -16
  %_allin_new_bt_42.phi.trans.insert.i = bitcast i8* %_new_gep_41.phi.trans.insert.i to i64*
  %.pre.i = load i64, i64* %_allin_new_bt_42.phi.trans.insert.i, align 8
  %_new_gep_44.phi.trans.insert.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_319.i5, i64 -20
  %.phi.trans.insert.i = bitcast i8* %_new_gep_44.phi.trans.insert.i to i32*
  %.pre26.i = load i32, i32* %.phi.trans.insert.i, align 4
  br label %block_0x42.i

block_0x36.block_0x6a_crit_edge.i:                ; preds = %block_0x42.i
  %113 = zext i32 %97 to i64, !mcsema_real_eip !15
  %114 = zext i32 %99 to i64, !mcsema_real_eip !20
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_573.pre.i = load i64, i64* %_RSP_ptr_.sroa.0.i, align 8
  br label %sub_0.exit

sub_0.exit:                                       ; preds = %driverBlockRaw, %block_0x36.block_0x6a_crit_edge.i
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_573.i = phi i64 [ %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_573.pre.i, %block_0x36.block_0x6a_crit_edge.i ], [ %69, %driverBlockRaw ]
  %RSI_val.0.lcssa.i = phi i64 [ %114, %block_0x36.block_0x6a_crit_edge.i ], [ %5, %driverBlockRaw ]
  %RDX_val.0.lcssa.i = phi i64 [ %113, %block_0x36.block_0x6a_crit_edge.i ], [ %4, %driverBlockRaw ]
  %RCX_val.0.lcssa.i = phi i64 [ %93, %block_0x36.block_0x6a_crit_edge.i ], [ %78, %driverBlockRaw ]
  %.lcssa.i = phi i32 [ %106, %block_0x36.block_0x6a_crit_edge.i ], [ %79, %driverBlockRaw ]
  %115 = zext i32 %.lcssa.i to i64, !mcsema_real_eip !21
  %uadd72.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_573.i, i64 32)
  %116 = extractvalue { i64, i1 } %uadd72.i, 0
  %117 = xor i64 %116, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_573.i, !mcsema_real_eip !22
  %118 = and i64 %117, 16, !mcsema_real_eip !22
  %119 = icmp ne i64 %118, 0, !mcsema_real_eip !22
  %120 = icmp slt i64 %116, 0
  %121 = icmp eq i64 %116, 0, !mcsema_real_eip !22
  %122 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_573.i, -9223372036854775808, !mcsema_real_eip !22
  %123 = and i64 %117, %122, !mcsema_real_eip !22
  %124 = icmp slt i64 %123, 0
  %125 = trunc i64 %116 to i8, !mcsema_real_eip !22
  %126 = tail call i8 @llvm.ctpop.i8(i8 %125), !mcsema_real_eip !22
  %127 = and i8 %126, 1
  %128 = icmp eq i8 %127, 0
  %129 = extractvalue { i64, i1 } %uadd72.i, 1
  store volatile i64 %116, i64* %_RSP_ptr_.sroa.0.i, align 8
  %130 = inttoptr i64 %116 to i64*, !mcsema_real_eip !23
  %131 = load i64, i64* %130, align 8
  store volatile i64 %131, i64* %_RBP_ptr_.sroa.0.i, align 8
  %132 = add i64 %116, 16, !mcsema_real_eip !24
  store volatile i64 %132, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 %115, i64* %RAX.i, align 8, !mcsema_real_eip !24
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !24
  store i64 %RCX_val.0.lcssa.i, i64* %RCX.i, align 8, !mcsema_real_eip !24
  store i64 %RDX_val.0.lcssa.i, i64* %RDX.i, align 8, !mcsema_real_eip !24
  store i64 %RSI_val.0.lcssa.i, i64* %RSI.i, align 8, !mcsema_real_eip !24
  store i64 %76, i64* %RDI.i, align 8, !mcsema_real_eip !24
  store volatile i64 %132, i64* %RSP.i, align 8
  store volatile i64 %131, i64* %RBP.i, align 8
  %133 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %133, align 8
  %134 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %134, align 8
  %135 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %135, align 8
  %136 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %136, align 8
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !24
  store i1 %129, i1* %CF.i, align 1, !mcsema_real_eip !24
  store i1 %128, i1* %PF.i, align 1, !mcsema_real_eip !24
  store i1 %119, i1* %AF.i, align 1, !mcsema_real_eip !24
  store i1 %121, i1* %ZF.i, align 1, !mcsema_real_eip !24
  store i1 %120, i1* %SF.i, align 1, !mcsema_real_eip !24
  store i1 %124, i1* %OF.i, align 1, !mcsema_real_eip !24
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !24
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !24
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !24
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !24
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !24
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !24
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !24
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !24
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !24
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !24
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !24
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !24
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !24
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !24
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !24
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !24
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !24
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !24
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !24
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !24
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !24
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !24
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !24
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !24
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !24
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !24
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !24
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !24
  store i11 %49, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !24
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !24
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !24
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !24
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !24
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !24
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !24
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !24
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !24
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !24
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !24
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !24
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !24
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !24
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !24
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !24
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !24
  %137 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %137, align 1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 40, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 8}
!4 = !{i64 15}
!5 = !{i64 18}
!6 = !{i64 22}
!7 = !{i64 33}
!8 = !{i64 37}
!9 = !{i64 44}
!10 = !{i64 47}
!11 = !{i64 57}
!12 = !{i64 60}
!13 = !{i64 66}
!14 = !{i64 74}
!15 = !{i64 78}
!16 = !{i64 87}
!17 = !{i64 90}
!18 = !{i64 98}
!19 = !{i64 54}
!20 = !{i64 85}
!21 = !{i64 106}
!22 = !{i64 109}
!23 = !{i64 113}
!24 = !{i64 114}
