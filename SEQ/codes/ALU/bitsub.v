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

module compliment(a,y);
input a;
output reg y;

always @ (a) begin
   if(a==1'b1)
      y = 1'b0;
   else
      y= 1'b1;   
end

endmodule

module bitcompliment(a,y);
	input signed [63:0] a;
	output signed [63:0] y;
	wire [63:0] y1;
	wire s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62,s63,s64;
	compliment t0(.a(a[0]),.y(y1[0]));
	compliment t1(.a(a[1]),.y(y1[1]));
	compliment t2(.a(a[2]),.y(y1[2]));
	compliment t3(.a(a[3]),.y(y1[3]));
	compliment t4(.a(a[4]),.y(y1[4]));
	compliment t5(.a(a[5]),.y(y1[5]));
	compliment t6(.a(a[6]),.y(y1[6]));
	compliment t7(.a(a[7]),.y(y1[7]));
	compliment t8(.a(a[8]),.y(y1[8]));
	compliment t9(.a(a[9]),.y(y1[9]));
	compliment t10(.a(a[10]),.y(y1[10]));
	compliment t11(.a(a[11]),.y(y1[11]));
	compliment t12(.a(a[12]),.y(y1[12]));
	compliment t13(.a(a[13]),.y(y1[13]));
	compliment t14(.a(a[14]),.y(y1[14]));
	compliment t15(.a(a[15]),.y(y1[15]));
	compliment t16(.a(a[16]),.y(y1[16]));
	compliment t17(.a(a[17]),.y(y1[17]));
	compliment t18(.a(a[18]),.y(y1[18]));
	compliment t19(.a(a[19]),.y(y1[19]));
	compliment t20(.a(a[20]),.y(y1[20]));
	compliment t21(.a(a[21]),.y(y1[21]));
	compliment t22(.a(a[22]),.y(y1[22]));
	compliment t23(.a(a[23]),.y(y1[23]));
	compliment t24(.a(a[24]),.y(y1[24]));
	compliment t25(.a(a[25]),.y(y1[25]));
	compliment t26(.a(a[26]),.y(y1[26]));
	compliment t27(.a(a[27]),.y(y1[27]));
	compliment t28(.a(a[28]),.y(y1[28]));
	compliment t29(.a(a[29]),.y(y1[29]));
	compliment t30(.a(a[30]),.y(y1[30]));
	compliment t31(.a(a[31]),.y(y1[31]));
    compliment t32(.a(a[32]),.y(y1[32]));
	compliment t33(.a(a[33]),.y(y1[33]));
	compliment t34(.a(a[34]),.y(y1[34]));
	compliment t35(.a(a[35]),.y(y1[35]));
	compliment t36(.a(a[36]),.y(y1[36]));
	compliment t37(.a(a[37]),.y(y1[37]));
	compliment t38(.a(a[38]),.y(y1[38]));
	compliment t39(.a(a[39]),.y(y1[39]));
	compliment t40(.a(a[40]),.y(y1[40]));
	compliment t41(.a(a[41]),.y(y1[41]));
	compliment t42(.a(a[42]),.y(y1[42]));
	compliment t43(.a(a[43]),.y(y1[43]));
	compliment t44(.a(a[44]),.y(y1[44]));
	compliment t45(.a(a[45]),.y(y1[45]));
	compliment t46(.a(a[46]),.y(y1[46]));
	compliment t47(.a(a[47]),.y(y1[47]));
	compliment t48(.a(a[48]),.y(y1[48]));
	compliment t49(.a(a[49]),.y(y1[49]));
	compliment t50(.a(a[50]),.y(y1[50]));
	compliment t51(.a(a[51]),.y(y1[51]));
	compliment t52(.a(a[52]),.y(y1[52]));
	compliment t53(.a(a[53]),.y(y1[53]));
	compliment t54(.a(a[54]),.y(y1[54]));
	compliment t55(.a(a[55]),.y(y1[55]));
	compliment t56(.a(a[56]),.y(y1[56]));
	compliment t57(.a(a[57]),.y(y1[57]));
	compliment t58(.a(a[58]),.y(y1[58]));
	compliment t59(.a(a[59]),.y(y1[59]));
	compliment t60(.a(a[60]),.y(y1[60]));
   	compliment t61(.a(a[61]),.y(y1[61]));
    compliment t62(.a(a[62]),.y(y1[62]));
    compliment t63(.a(a[63]),.y(y1[63]));

	
	adder f0(y1[0],1'b1,s0,y[0],s1);
	adder f1(y1[1],1'b0,s1,y[1],s2);
	adder f2(y1[2],1'b0,s2,y[2],s3);
	adder f3(y1[3],1'b0,s3,y[3],s4);
	adder f4(y1[4],1'b0,s4,y[4],s5);
	adder f5(y1[5],1'b0,s5,y[5],s6);
	adder f6(y1[6],1'b0,s6,y[6],s7);
	adder f7(y1[7],1'b0,s7,y[7],s8);
	adder f8(y1[8],1'b0,s8,y[8],s9);
	adder f9(y1[9],1'b0,s9,y[9],s10);
	adder f10(y1[10],1'b0,s10,y[10],s11);
	adder f11(y1[11],1'b0,s11,y[11],s12);
	adder f12(y1[12],1'b0,s12,y[12],s13);
	adder f13(y1[13],1'b0,s13,y[13],s14);
	adder f14(y1[14],1'b0,s14,y[14],s15);
	adder f15(y1[15],1'b0,s15,y[15],s16);
	adder f16(y1[16],1'b0,s16,y[16],s17);
	adder f17(y1[17],1'b0,s17,y[17],s18);
	adder f18(y1[18],1'b0,s18,y[18],s19);
	adder f19(y1[19],1'b0,s19,y[19],s20);
	adder f20(y1[20],1'b0,s20,y[20],s21);
	adder f21(y1[21],1'b0,s21,y[21],s22);
	adder f22(y1[22],1'b0,s22,y[22],s23);
	adder f23(y1[23],1'b0,s23,y[23],s24);
	adder f24(y1[24],1'b0,s24,y[24],s25);
	adder f25(y1[25],1'b0,s25,y[25],s26);
	adder f26(y1[26],1'b0,s26,y[26],s27);
	adder f27(y1[27],1'b0,s27,y[27],s28);
	adder f28(y1[28],1'b0,s28,y[28],s29);
	adder f29(y1[29],1'b0,s29,y[29],s30);
	adder f30(y1[30],1'b0,s30,y[30],s31);
	adder f31(y1[31],1'b0,s31,y[31],s32);
    adder f32(y1[32],1'b0,s32,y[32],s33);
	adder f33(y1[33],1'b0,s33,y[33],s34);
	adder f34(y1[34],1'b0,s34,y[34],s35);
	adder f35(y1[35],1'b0,s35,y[35],s36);
	adder f36(y1[36],1'b0,s36,y[36],s37);
	adder f37(y1[37],1'b0,s37,y[37],s38);
	adder f38(y1[38],1'b0,s38,y[38],s39);
	adder f39(y1[39],1'b0,s39,y[39],s40);
	adder f40(y1[40],1'b0,s40,y[40],s41);
	adder f41(y1[41],1'b0,s41,y[41],s42);
	adder f42(y1[42],1'b0,s42,y[42],s43);
	adder f43(y1[43],1'b0,s43,y[43],s44);
	adder f44(y1[44],1'b0,s44,y[44],s45);
	adder f45(y1[45],1'b0,s45,y[45],s46);
	adder f46(y1[46],1'b0,s46,y[46],s47);
	adder f47(y1[47],1'b0,s47,y[47],s48);
	adder f48(y1[48],1'b0,s48,y[48],s49);
	adder f49(y1[49],1'b0,s49,y[49],s50);
	adder f50(y1[50],1'b0,s50,y[50],s51);
	adder f51(y1[51],1'b0,s51,y[51],s52);
	adder f52(y1[52],1'b0,s52,y[52],s53);
	adder f53(y1[53],1'b0,s53,y[53],s54);
	adder f54(y1[54],1'b0,s54,y[54],s55);
	adder f55(y1[55],1'b0,s55,y[55],s56);
	adder f56(y1[56],1'b0,s56,y[56],s57);
	adder f57(y1[57],1'b0,s57,y[57],s58);
	adder f58(y1[58],1'b0,s58,y[58],s59);
	adder f59(y1[59],1'b0,s59,y[59],s60);
	adder f60(y1[60],1'b0,s60,y[60],s61);
	adder f61(y1[61],1'b0,s61,y[61],s62);
        adder f62(y1[62],1'b0,s62,y[62],s63);
	adder f63(y1[63],1'b0,s63,y[63],s64);


endmodule



module bitsub(a,b,y);
	input signed [63:0] a,b;
	output signed [63:0] y;	
	wire [63:0] bc;
    wire s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62,s63,s64;
			bitcompliment bc1(b,bc);
			adder f0(a[0],bc[0],s0,y[0],s1);
			adder f1(a[1],bc[1],s1,y[1],s2);
			adder f2(a[2],bc[2],s2,y[2],s3);
			adder f3(a[3],bc[3],s3,y[3],s4);
			adder f4(a[4],bc[4],s4,y[4],s5);
			adder f5(a[5],bc[5],s5,y[5],s6);
			adder f6(a[6],bc[6],s6,y[6],s7);
			adder f7(a[7],bc[7],s7,y[7],s8);
			adder f8(a[8],bc[8],s8,y[8],s9);
			adder f9(a[9],bc[9],s9,y[9],s10);
			adder f10(a[10],bc[10],s10,y[10],s11);
			adder f11(a[11],bc[11],s11,y[11],s12);
			adder f12(a[12],bc[12],s12,y[12],s13);
			adder f13(a[13],bc[13],s13,y[13],s14);
			adder f14(a[14],bc[14],s14,y[14],s15);
			adder f15(a[15],bc[15],s15,y[15],s16);
			adder f16(a[16],bc[16],s16,y[16],s17);
			adder f17(a[17],bc[17],s17,y[17],s18);
			adder f18(a[18],bc[18],s18,y[18],s19);
			adder f19(a[19],bc[19],s19,y[19],s20);
			adder f20(a[20],bc[20],s20,y[20],s21);
			adder f21(a[21],bc[21],s21,y[21],s22);
			adder f22(a[22],bc[22],s22,y[22],s23);
			adder f23(a[23],bc[23],s23,y[23],s24);
			adder f24(a[24],bc[24],s24,y[24],s25);
			adder f25(a[25],bc[25],s25,y[25],s26);
			adder f26(a[26],bc[26],s26,y[26],s27);
			adder f27(a[27],bc[27],s27,y[27],s28);
			adder f28(a[28],bc[28],s28,y[28],s29);
			adder f29(a[29],bc[29],s29,y[29],s30);
			adder f30(a[30],bc[30],s30,y[30],s31);
			adder f31(a[31],bc[31],s31,y[31],s32);
                        adder f32(a[32],bc[32],s32,y[32],s33);
                        adder f33(a[33],bc[33],s33,y[33],s34);
			adder f34(a[34],bc[34],s34,y[34],s35);
			adder f35(a[35],bc[35],s35,y[35],s36);
			adder f36(a[36],bc[36],s36,y[36],s37);
			adder f37(a[37],bc[37],s37,y[37],s38);
			adder f38(a[38],bc[38],s38,y[38],s39);
			adder f39(a[39],bc[39],s39,y[39],s40);
			adder f40(a[40],bc[40],s40,y[40],s41);
			adder f41(a[41],bc[41],s41,y[41],s42);
			adder f42(a[42],bc[42],s42,y[42],s43);
			adder f43(a[43],bc[43],s43,y[43],s44);
			adder f44(a[44],bc[44],s44,y[44],s45);
			adder f45(a[45],bc[45],s45,y[45],s46);
			adder f46(a[46],bc[46],s46,y[46],s47);
			adder f47(a[47],bc[47],s47,y[47],s48);
			adder f48(a[48],bc[48],s48,y[48],s49);
			adder f49(a[49],bc[49],s49,y[49],s50);
			adder f50(a[50],bc[50],s50,y[50],s51);
			adder f51(a[51],bc[51],s51,y[51],s52);
			adder f52(a[52],bc[52],s52,y[52],s53);
			adder f53(a[53],bc[53],s53,y[53],s54);
			adder f54(a[54],bc[54],s54,y[54],s55);
			adder f55(a[55],bc[55],s55,y[55],s56);
			adder f56(a[56],bc[56],s56,y[56],s57);
			adder f57(a[57],bc[57],s57,y[57],s58);
			adder f58(a[58],bc[58],s58,y[58],s59);
			adder f59(a[59],bc[59],s59,y[59],s60);
			adder f60(a[60],bc[60],s60,y[60],s61);
			adder f61(a[61],bc[61],s61,y[61],s62);
    		        adder f62(a[62],bc[62],s62,y[62],s63);
			adder f63(a[63],bc[63],s63,y[63],s64);

endmodule
