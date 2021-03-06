TEST_BEGIN(XCHG, 1)
TEST_INPUTS(
0,    
1,    
0x41, 
0x51, 
0x80, 
0x55, 
0xAA, 
0x0F, 
0xF7, 
0xFE, 
0xEF, 
0x7F, 
0xFF, 
0x4141, 
0x5151, 
0x8000, 
0x5500, 
0x5555, 
0xAA00, 
0xAAAA, 
0x0F0F, 
0xF7F7, 
0xFEFE, 
0xEFEF, 
0x7FFF, 
0xFFFF, 
0x41414141, 
0x51515151, 
0x55000000, 
0x55555555, 
0xAAFFFFFF, 
0xAAAAAAAA, 
0x0F0F0F0F, 
0xF7F7F7F7, 
0xFEFEFEFE, 
0xEFEFEFEF, 
0x7FFFFFFF, 
0xFFFFFFFF, 
0x4141414141414141, 
0x5115151515115151, 
0x8000000000000000, 
0x5500000000000000, 
0x5555555555555555, 
0xAA00000000000000, 
0xAAAAAAAAAAAAAAAA, 
0x0F0F0F0F0F0F0F0F, 
0xF7F7F7F7F7F7F7F7, 
0xEFEFEFEFEFEFEFEF, 
0xFEFEFEFEFEFEFEFE, 
0x7FFFFFFFFFFFFFFF,
0xFFFFFFFFFFFFFFFF)
    
  movq  ARG1_64,  %rax
  movq  %rax, %xmm0  

  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3

  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6

  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9

  subpd  %xmm5, %xmm5 
  subps  %xmm4, %xmm6 
  subsd  %xmm4, %xmm7 
  subss  %xmm4, %xmm8 
  hsubpd  %xmm4, %xmm9 
  hsubps  %xmm4, %xmm9 
  
  vsubpd    %xmm4, %xmm5, %xmm0 
  vsubps    %xmm4, %xmm6, %xmm0 
  vsubsd    %xmm4, %xmm7, %xmm0 
  vsubss    %xmm4, %xmm8, %xmm0 
  vhsubpd   %xmm4, %xmm9, %xmm0 
  vhsubps   %xmm4, %xmm9, %xmm0 


  vsubpd    %ymm4, %ymm5, %ymm0 
  vsubps    %ymm4, %ymm6, %ymm0 
  vhsubpd   %ymm4, %ymm7, %ymm0 
  vhsubps   %ymm4, %ymm8, %ymm0 



TEST_END

