// Autogenerated using stratification.
requires "x86-configuration.k"

module PMULDQ-XMM-M128
  imports X86-CONFIGURATION

  context execinstr(pmuldq:Opcode HOLE:Mem, R2:Xmm,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (pmuldq:Opcode memOffset( MemOff:MInt):MemOffset, R2:Xmm,  .Operands) =>
      loadFromMemory( MemOff, 128) ~>
      execinstr (pmuldq memOffset( MemOff), R2:Xmm,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem128:MInt):MemLoadValue ~> execinstr (pmuldq:Opcode memOffset( MemOff:MInt):MemOffset, R2:Xmm,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 128), concatenateMInt( mulMInt( mi(64, svalueMInt(extractMInt( getParentValue(R2, RSMap), 160, 192))), mi(64, svalueMInt(extractMInt( Mem128, 32, 64)))), mulMInt( mi(64, svalueMInt(extractMInt( getParentValue(R2, RSMap), 224, 256))), mi(64, svalueMInt(extractMInt( Mem128, 96, 128))))))
      )
    </regstate>
endmodule
