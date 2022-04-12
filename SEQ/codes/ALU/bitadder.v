`timescale 1ns / 1ps

module adder(a,b,c,y,s);
input a,b,c;
output reg y,s;
always @ (a or b or c) begin
   if (a == 1'b1) begin
   		if(b == 1'b1) begin
   			if(c == 1'b1)begin
   				y=1'b1;
   				s=1'b1;
   			end
   			else begin
   				y=1'b0;
   				s=1'b1;
   			end	
   		end
   		else begin
   			if(c == 1'b1)begin
   				y=1'b0;
   				s=1'b1;
   			end
   			else begin
   				y=1'b1;
   				s=1'b0;
   			end	
   		end
       		
    end
   else begin
   		if(b == 1'b1) begin
   			if(c == 1'b1)begin
   				y=1'b0;
   				s=1'b1;
   			end
   			else begin
   				y=1'b1;
   				s=1'b0;
   			end	
   		end
   		else begin
   			if(c == 1'b1)begin
   				y=1'b1;
   				s=1'b0;
   			end
   			else begin
   				y=1'b0;
   				s=1'b0;
   			end	
   		end
       		
    end 
        
end
endmodule

module bitadder(a,b,y);
	input [63:0] a,b;
	output [63:0] y; 
	wire s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62,s63,s64;
	
		
			adder f0(a[0],b[0],s0,y[0],s1);
			adder f1(a[1],b[1],s1,y[1],s2);
			adder f2(a[2],b[2],s2,y[2],s3);
			adder f3(a[3],b[3],s3,y[3],s4);
			adder f4(a[4],b[4],s4,y[4],s5);
			adder f5(a[5],b[5],s5,y[5],s6);
			adder f6(a[6],b[6],s6,y[6],s7);
			adder f7(a[7],b[7],s7,y[7],s8);
			adder f8(a[8],b[8],s8,y[8],s9);
			adder f9(a[9],b[9],s9,y[9],s10);
			adder f10(a[10],b[10],s10,y[10],s11);
			adder f11(a[11],b[11],s11,y[11],s12);
			adder f12(a[12],b[12],s12,y[12],s13);
			adder f13(a[13],b[13],s13,y[13],s14);
			adder f14(a[14],b[14],s14,y[14],s15);
			adder f15(a[15],b[15],s15,y[15],s16);
			adder f16(a[16],b[16],s16,y[16],s17);
			adder f17(a[17],b[17],s17,y[17],s18);
			adder f18(a[18],b[18],s18,y[18],s19);
			adder f19(a[19],b[19],s19,y[19],s20);
			adder f20(a[20],b[20],s20,y[20],s21);
			adder f21(a[21],b[21],s21,y[21],s22);
			adder f22(a[22],b[22],s22,y[22],s23);
			adder f23(a[23],b[23],s23,y[23],s24);
			adder f24(a[24],b[24],s24,y[24],s25);
			adder f25(a[25],b[25],s25,y[25],s26);
			adder f26(a[26],b[26],s26,y[26],s27);
			adder f27(a[27],b[27],s27,y[27],s28);
			adder f28(a[28],b[28],s28,y[28],s29);
			adder f29(a[29],b[29],s29,y[29],s30);
			adder f30(a[30],b[30],s30,y[30],s31);
			adder f31(a[31],b[31],s31,y[31],s32);
            adder f32(a[32],b[32],s32,y[32],s33);
            adder f33(a[33],b[33],s33,y[33],s34);
			adder f34(a[34],b[34],s34,y[34],s35);
            adder f35(a[35],b[35],s35,y[35],s36);
            adder f36(a[36],b[36],s36,y[36],s37);
            adder f37(a[37],b[37],s37,y[37],s38);
            adder f38(a[38],b[38],s38,y[38],s39);
            adder f39(a[39],b[39],s39,y[39],s40);
            adder f40(a[40],b[40],s40,y[40],s41);
            adder f41(a[41],b[41],s41,y[41],s42);
            adder f42(a[42],b[42],s42,y[42],s43);
            adder f43(a[43],b[43],s43,y[43],s44);
            adder f44(a[44],b[44],s44,y[44],s45);
            adder f45(a[45],b[45],s45,y[45],s46);
            adder f46(a[46],b[46],s46,y[46],s47);
            adder f47(a[47],b[47],s47,y[47],s48);
            adder f48(a[48],b[48],s48,y[48],s49);
            adder f49(a[49],b[49],s49,y[49],s50);
            adder f50(a[50],b[50],s50,y[50],s51);
            adder f51(a[51],b[51],s51,y[51],s52);
            adder f52(a[52],b[52],s52,y[52],s53);
            adder f53(a[53],b[53],s53,y[53],s54);
            adder f54(a[54],b[54],s54,y[54],s55);
            adder f55(a[55],b[55],s55,y[55],s56);
            adder f56(a[56],b[56],s56,y[56],s57);
            adder f57(a[57],b[57],s57,y[57],s58);
            adder f58(a[58],b[58],s58,y[58],s59);
            adder f59(a[59],b[59],s59,y[59],s60);
            adder f60(a[60],b[60],s60,y[60],s61);
            adder f61(a[61],b[61],s61,y[61],s62);
            adder f62(a[62],b[62],s62,y[62],s63);
            adder f63(a[63],b[63],s63,y[63],s64);

endmodule
