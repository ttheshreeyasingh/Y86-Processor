module regfile(
  clk,icode,rA,rB,cnd,valA,valB,valE,valM,mem0,mem1,mem2,mem3,mem4,mem5,
  mem6,mem7,mem8,mem9,mem10,mem11,mem12,mem13,mem14);
 // Reset is used to set all registers to 0
  input reset, clk, cnd;
  input [3:0] icode,rA,rB;
  output reg [63:0] valA, valB;
  input [63:0] valE, valM; 
  output reg [63:0] mem0,mem1,mem2,mem3,mem4,mem5,mem6,mem7,mem8,mem9,mem10,mem11,mem12,mem13,mem14;
  reg [63:0] mem[0:14];

  initial begin
    mem[0]=64'd0; mem[1]=64'd1;  mem[2]=64'd2;  mem[3]=64'd3; mem[4]=64'd4; mem[5]=64'd5;mem[6]=64'd6; mem[7]=64'd7;
    mem[8]=64'd8; mem[9]=64'd9; mem[10]=64'd10; mem[11]=64'd11; mem[12]=64'd12; mem[13]=64'd13; mem[14]=64'd14;
  end

  //This is the decode module
always@(*) begin
      case(icode)
      4'b0010:valA=mem[rA];
      4'b0100:begin
        valA=mem[rA];
        valB=mem[rB];
      end
      4'b0101:valB=mem[rB];
      4'b0110:begin
        valA=mem[rA];
        valB=mem[rB];
      end
      4'b1000: valB=mem[4];
      4'b1001:begin
        valA=mem[4]; 
        valB=mem[4]; 
      end
      4'b1010:begin
        valA=mem[rA];
        valB=mem[4];
      end
      4'b1011:begin
        valA=mem[4]; 
        valB=mem[4];
      end
      endcase
    mem0=mem[0];mem1=mem[1];mem2=mem[2];mem3=mem[3];mem4=mem[4];mem5=mem[5];mem6=mem[6];mem7=mem[7];
    mem8=mem[8];mem9=mem[9];mem10=mem[10];mem11=mem[11];mem12=mem[12];mem13=mem[13];mem14=mem[14];
  end
  
  //This is the write-back module
  always@(negedge clk) begin
    if(icode==4'b0010 || cnd==1'b1) mem[rB]=valE;//cmovxx
    else if(icode==4'b0011)mem[rB]=valE; //irmovq
    else if(icode==4'b0101)mem[rA]=valM; //mrmovq
    else if(icode==4'b0110)mem[rB]=valE; //OPq
    else if(icode==4'b1000)mem[4]=valE; //call
    else if(icode==4'b1001) mem[4]=valE;//ret
    else if(icode==4'b1010)mem[4]=valE; //pushq
    else if(icode==4'b1011) //popq
    begin
      mem[4]=valE;
      mem[rA]=valM;
    end
    mem0=mem[0];mem1=mem[1];mem2=mem[2];mem3=mem[3];mem4=mem[4];mem5=mem[5];mem6=mem[6];mem7=mem[7];
    mem8=mem[8];mem9=mem[9];mem10=mem[10];mem11=mem[11];mem12=mem[12];mem13=mem[13];mem14=mem[14];
  end
endmodule