`timescale 1ns / 1ps
`include "fetch.v"
`include "execute.v"
`include "decode.v"
`include "memory.v"
`include "pc-update.v"
module processor;
  reg clk;
  reg [63:0] pc;
  reg stat[0:2]; 
  wire [63:0] mem0, mem1, mem2, mem3, mem4, mem5, mem6, mem7, mem8, mem9;
  wire [63:0] mem10, mem11, mem12, mem13, mem14, datamem;
  wire sign_flag, zero_flag, overflow_flag;
  wire [3:0] icode, ifun, rA, rB; 
  wire [63:0] valC, valP, valA, valB, valE, valM, updated_pc;
  wire instr_valid, imem_error,hltins,cnd;

  
 

  fetch fetch(.clk(clk),.pc(pc),.icode(icode),.ifun(ifun),.rA(rA),.rB(rB),
  .valC(valC),.valP(valP),.instr_valid(instr_valid),.imem_error(imem_error),.hlt(hltins) );

  execute execute(.clk(clk),.icode(icode),.ifun(ifun),.valA(valA),.valB(valB),
    .valC(valC),.valE(valE),.sign_flag(sign_flag),.zero_flag(zero_flag),.overflow_flag(overflow_flag),.cnd(cnd));

  regfile decode_wb(.clk(clk),.icode(icode),.rA(rA),.rB(rB),.cnd(cnd),.valA(valA),
    .valB(valB),.valE(valE),.valM(valM),.mem0(mem0),.mem1(mem1),.mem2(mem2),.mem3(mem3),.mem4(mem4),
    .mem5(mem5),.mem6(mem6),.mem7(mem7),.mem8(mem8),.mem9(mem9),.mem10(mem10),
    .mem11(mem11),.mem12(mem12),.mem13(mem13),.mem14(mem14));

  memory mem(.clk(clk),.icode(icode),.valA(valA),.valB(valB),
    .valE(valE),.valP(valP),.valM(valM),.datamem(datamem));

  pc_update pcup(
    .clk(clk),.pc(pc),.icode(icode),.cnd(cnd),.valC(valC),
    .valM(valM),.valP(valP),.updated_pc(updated_pc)); 

  always #5 clk=~clk;
  initial begin
    $dumpfile("processor.vcd");
    $dumpvars(0,processor);
    stat[0]=1;
    stat[1]=0;
    stat[2]=0;
    clk=0;
    pc=64'd32;
  end 

  always@(*)
  begin
    pc=updated_pc;
  end

  always@(*)
  begin
    if(hltins)
    begin
      stat[1+1]=hltins;
      stat[1]=1'b1;
      stat[0]=1'b0;
    end
    else if(instr_valid)
    begin
      stat[1]=instr_valid;
      stat[2]=1'b0;
      stat[0]=1'b0;
    end
    else
    begin
      stat[0]=1'b1;
      stat[1]=1'b0;
      stat[2]=1'b0;
    end
  end
  
  always@(*)
  begin
    if(stat[2]==1'b1)$finish;
  end
  initial
	$monitor("clk=%d icode=%b ifun=%b rA=%b rB=%b valA=%d valB=%d valC=%d valE=%d valM=%d insval=%d memerr=%d cnd=%d halt=%d 0=%d 1=%d 2=%d 3=%d 4=%d 5=%d 6=%d 7=%d 8=%d 9=%d 10=%d 11=%d 12=%d 13=%d 14=%d datamem=%d\n",clk,icode,ifun,rA,rB,valA,valB,valC,valE,valM,instr_valid,imem_error,cnd,stat[2],mem0,mem1,mem2,mem3,mem4,mem5,mem6,mem7,mem8,mem9,mem10,mem11,mem12,mem13,mem14,datamem);
  endmodule
