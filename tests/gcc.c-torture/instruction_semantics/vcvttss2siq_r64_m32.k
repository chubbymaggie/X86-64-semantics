// Autogenerated using stratification.
requires "x86-configuration.k"

module VCVTTSS2SIQ-R64-M32
  imports X86-CONFIGURATION

  context execinstr(vcvttss2siq:Opcode HOLE:Mem, R2:R64,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (vcvttss2siq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (vcvttss2siq memOffset( MemOff), R2,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (vcvttss2siq:Opcode memOffset( MemOff:MInt):MemOffset, R2:R64,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> cvt_single_to_int64_truncate(Mem32)
      )
    </regstate>
endmodule
