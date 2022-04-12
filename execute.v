// This module creates ALU used in our processor
// 0- ADD, 1- SUB, 2- AND, 3- exclusive-or
module alu(input [63:0] aluA,input [63:0] aluB,input [3:0] alufun,output [63:0] valE,output [2:0] new_cc);
parameter ALUADD = 4'h0;
parameter ALUSUB = 4'h1;
parameter ALUAND = 4'h2;
parameter ALUXOR = 4'h3;
assign valE = alufun == ALUSUB ? aluB - aluA :  alufun == ALUAND ? aluB & aluA : alufun == ALUXOR ? aluB ^ aluA :  aluB + aluA;
// new_cc[2] corresponds to zero flag new_cc[1] corresponds to ;
assign new_cc[2] = (valE == 0); // ZFregister #(3) c(cc, new_cc, ~set_cc, 3'b100, clock);
assign new_cc[1] = valE[63];   // SF
assign new_cc[0] =             // OF
    alufun == ALUADD ?
        (aluA[63] == aluB[63]) & (aluA[63] != valE[63]) :
    alufun == ALUSUB ?
        (~aluA[63] == aluB[63]) & (aluB[63] != valE[63]) :
    0;
endmodule

// Condition code register is defined here
module cc(output[2:0] cc,input [2:0] new_cc,input  set_cc,input  reset,input  clock);
pipereg3 c(cc, new_cc, ~set_cc, 3'b100, clock);
endmodule

module cond(input [3:0] f_ifun,input [2:0] cc,output Cnd);
wire zf = cc[2];
wire sf = cc[1];
wire of = cc[0];

parameter yes = 4'h0;
parameter LE = 4'h1;
parameter less_than = 4'h2;
parameter Equal_to = 4'h3;
parameter Not_Equal_to = 4'h4;
parameter greater_than_equal_to = 4'h5;
parameter greater_than = 4'h6;

// Figuring out the condtion using f_ifun and the flags
assign Cnd = (f_ifun == yes) | (f_ifun == LE & ((sf^of)|zf)) | 
             (f_ifun == less_than & (sf^of)) | (f_ifun == Equal_to & zf) | (f_ifun == Not_Equal_to & ~zf) | 
             (f_ifun == greater_than_equal_to & (~sf^of) ) | (f_ifun == greater_than & ((~sf^of)&~zf)) ;

endmodule
