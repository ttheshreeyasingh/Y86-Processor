`timescale 1ns / 1ps

module fetch(
  input clk,input [63:0] pc,
  output reg [3:0] icode,output reg [3:0] ifun,output reg [3:0] rA,output reg [3:0] rB,output reg [63:0] valC,output reg [63:0] valP,
  output reg instr_valid,output reg imem_error,output reg hlt
);
  reg [7:0] instr_mem[0:1023];
  reg [0:79] instr;

  initial begin
//OPq
    instr_mem[32]=8'b01100000; 
    instr_mem[33]=8'b00100011; 
    instr_mem[34]=8'b00010000; 
    instr_mem[35]=8'b00010000; 
    instr_mem[36]=8'b00010000; 
  //cmovxx
    instr_mem[37]=8'b00100000; 
    instr_mem[38]=8'b00000100; 
    instr_mem[39]=8'b00010000;
    instr_mem[40]=8'b00010000; 
    instr_mem[41]=8'b00010000; 
    instr_mem[42]=8'b00010000; 
    instr_mem[43]=8'b00010000; 
    instr_mem[44]=8'b00010000; 
  //halt
    instr_mem[45]=8'b00000000; 
  end  
  always@(posedge clk) 
  begin 

    imem_error=0;
    if(pc>1023)imem_error=1;
    instr={
      instr_mem[pc],
      instr_mem[pc+1],
      instr_mem[pc+2],
      instr_mem[pc+3],
      instr_mem[pc+4],
      instr_mem[pc+5],
      instr_mem[pc+6],
      instr_mem[pc+7],
      instr_mem[pc+8],
      instr_mem[pc+9]
    };

    icode= instr[0:3];
    ifun= instr[4:7];

    instr_valid=1'b1;

    if(icode==4'b0000) //halt
    begin
      hlt=1;
      valP=pc+64'd1;
    end
    else if(icode==4'b0001) //nop
    begin
      valP=pc+64'd1;
    end
    else if(icode==4'b0010) //cmovxx
    begin
      rA=instr[8:11];
      rB=instr[12:15];
      valP=pc+64'd2;
    end
    else if(icode==4'b0011) //irmovq
    begin
      rA=instr[8:11];
      rB=instr[12:15];
      valC=instr[16:79];
      valP=pc+64'd10;
    end
    else if(icode==4'b0100) //rmmovq
    begin
      rA=instr[8:11];
      rB=instr[12:15];
      valC=instr[16:79];
      valP=pc+64'd10;
    end
    else if(icode==4'b0101) //mrmovq
    begin
      rA=instr[8:11];
      rB=instr[12:15];
      valC=instr[16:79];
      valP=pc+64'd10;
    end
    else if(icode==4'b0110) //OPq
    begin
      rA=instr[8:11];
      rB=instr[12:15];
      valP=pc+64'd2;
    end
    else if(icode==4'b0111) //jxx
    begin
      valC=instr[8:71];
      valP=pc+64'd9;
    end
    else if(icode==4'b1000) //call
    begin
      valC=instr[8:71];
      valP=pc+64'd9;
    end
    else if(icode==4'b1001) //ret
    begin
      valP=pc+64'd1;
    end
    else if(icode==4'b1010) //pushq
    begin
      rA=instr[8:11];
      rB=instr[12:15];
      valP=pc+64'd2;
    end
    else if(icode==4'b1011) //popq
    begin
      rA=instr[8:11];
      rB=instr[12:15];
      valP=pc+64'd2;
    end
    else 
    begin
      instr_valid=1'b0;
    end
  end

endmodule
