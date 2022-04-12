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
