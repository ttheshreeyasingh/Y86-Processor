`timescale 1ns / 1ps
module memory(clk, icode, valA, valB, valP, valM, valE, datamem);
    input clk;
    input [3:0] icode;
    input [63:0] valA,valB,valE,valP;
    output reg [63:0] valM, datamem;
    reg [63:0] mem[0:1023];
    always@(*) begin
            if(icode==4'b0100)mem[valE] = valA;
            else if(icode==4'b0101) valM = mem[valE];
            else if(icode==4'b1000) mem[valE] = valP;
            else if(icode==4'b1001) valM = mem[valA];
            else if(icode==4'b1010) mem[valE] = valA;
            else if(icode==4'b1011)valM = mem[valA];
        datamem = mem[valE];
    end
endmodule