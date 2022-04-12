`timescale 1ns / 1ps
module pc_update(
  clk,pc,cnd,icode,valC,valM,valP,
  updated_pc
);
  input clk, cnd;
  input [3:0] icode;
  input [63:0] valC,valP,valM,pc;
  output reg [63:0] updated_pc;
  always@(*)
  begin
    if(icode==4'b0111) //jxx
    begin
      if(cnd==1'b1)updated_pc=valC;
      else updated_pc=valP;
    end
    else if(icode==4'b1000)updated_pc=valC; //call
    else if(icode==4'b1001)updated_pc=valM; //ret
    else  updated_pc=valP;
  end
endmodule