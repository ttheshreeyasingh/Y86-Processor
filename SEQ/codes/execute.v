`timescale 1ns / 1ps
`include "./ALU/ALU.v"

module execute(
  clk,icode,ifun,valA,valB,valC,valE,cnd,zero_flag,sign_flag,overflow_flag
);

  input clk;
  input [3:0] icode, ifun; 
  input [63:0] valA, valB, valC;

  output reg [63:0] valE; 
  output reg cnd, zero_flag, sign_flag, overflow_flag;

  always@(*)
  begin
    if(icode==4'b0110 && clk==1)
    begin
      zero_flag=(y==1'b0);
      sign_flag=(y<1'b0);
      overflow_flag=(a<1'b0==b<1'b0)&&(y<1'b0!=a<1'b0);
    end
  end

  initial begin zero_flag=0; sign_flag=0; overflow_flag=0; end

  reg [63:0]temp, a, b;
  reg [1:0] control;

  wire [63:0]y;
  wire overflow;

  ALU alu1(
   control, a, b, y
  );

  reg r1, r2, p1, p2,q1, q2, s;
  wire rout, pout, qout, sout;
  xor g1(rout,r1,r2);
  or g2(qout,p1,p2);
  and g3(pout,q1,q2);
  not g4(sout,s);

  initial begin control=2'b00; a = 64'b0; b = 64'b0; end
  
  always@(*)
  begin
      cnd=0;
      if(icode==4'b0010) //cmovxx
      begin
        if(ifun==4'b0000)cnd=1;//rrmovq
        else if(ifun==4'b0001)//cmovle
        begin
          r1=sign_flag; // (sign_flag^overflow_flag)||zero_flag
          r2=overflow_flag;
          if(rout)cnd=1;
          else if(zero_flag)cnd=1;
        end
        else if(ifun==4'b0010)//cmovl
        begin
          r1=sign_flag; // sign_flag^overflow_flag
          r2=overflow_flag;
          if(rout)cnd=1;
        end
        else if(ifun==4'b0011)//cmove
        begin
          if(zero_flag)cnd=1; // zero_flag
        end
        else if(ifun==4'b0100)//cmovne
        begin
          s=zero_flag; // !zero_flag
          if(sout)cnd=1;
        end
        else if(ifun==4'b0101)//cmovge
        begin
          r1=sign_flag;
          r2=overflow_flag;
          s=rout;
          if(sout)cnd=1; 
        end
        else if(ifun==4'b0110)//cmovg
        begin
          r1=sign_flag;
          r2=overflow_flag;
          s=rout;
          if(sout)
          begin
            s=zero_flag;
            if(sout) cnd=1;  
          end
        end
        valE=64'd0+valA;
      end
      else if(icode==4'b0011) valE=64'd0+valC; //irmovq
      else if(icode==4'b0100) valE=valB+valC;//rmmovq
      else if(icode==4'b0101)valE=valB+valC; //mrmovq
      else if(icode==4'b0110) //OPq
      begin
        if(ifun==4'b0000) //add
        begin control=2'b00; a = valA;b = valB;end
        else if(ifun==4'b0001) //sub
        begin  control=2'b01;   a = valB;  b = valA; end
        else if(ifun==4'b0010) //and
        begin control=2'b10; a = valA;  b = valB;
        end
        else if(ifun==4'b0011) //xor
        begin control=2'b11; a = valA; b = valB; end
        temp=y;
        valE=temp;
      end
      if(icode==4'b0111) //jxx
      begin
        if(ifun==4'b0000)cnd=1;//jmp
        else if(ifun==4'b0001)//jle
        begin
          r1=sign_flag;
          r2=overflow_flag;
          if(rout) cnd=1;
          else if(zero_flag) cnd=1;
        end
        else if(ifun==4'b0010)
        begin
          r1=sign_flag;
          r2=overflow_flag;
          if(rout)cnd=1;
        end
        else if(ifun==4'b0011)if(zero_flag)cnd=1;
        else if(ifun==4'b0100)
        begin
          s=zero_flag;
          if(sout)cnd=1;
        end
        else if(ifun==4'b0101)
        begin
          r1=sign_flag;
          r2=overflow_flag;
          s=rout;
          if(sout)cnd=1;
        end
        else if(ifun==4'b0110)
        begin
          r1=sign_flag;
          r2=overflow_flag;
          s=rout;
          if(sout)
          begin
            s=zero_flag;
            if(sout)cnd=1;
          end end end
      if(icode==4'b1000)valE=-64'd8+valB; //call
      if(icode==4'b1001)valE=64'd8+valB; //ret
      if(icode==4'b1010) valE=-64'd8+valB;//pushq
      if(icode==4'b1011)valE=64'd8+valB; //popq
  end
endmodule