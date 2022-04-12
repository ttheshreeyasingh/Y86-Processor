`timescale 1ns / 1ps

module and1(a,b,y);
input a,b;
output reg y;
always @ (a or b) begin
   if (a == 1'b1) begin
   		if(b == 1'b1)
       		y = 1'b1;
       	else
       		y = 1'b0;
   end
   else 
       y = 1'b0; 
end
endmodule

module bitand(a,b,y);
	input [63:0] a,b;
	output [63:0] y;

	and1 t0(.a(a[0]),.b(b[0]),.y(y[0]));
	and1 t1(.a(a[1]),.b(b[1]),.y(y[1]));
	and1 t2(.a(a[2]),.b(b[2]),.y(y[2]));
	and1 t3(.a(a[3]),.b(b[3]),.y(y[3]));
	and1 t4(.a(a[4]),.b(b[4]),.y(y[4]));
	and1 t5(.a(a[5]),.b(b[5]),.y(y[5]));
	and1 t6(.a(a[6]),.b(b[6]),.y(y[6]));
	and1 t7(.a(a[7]),.b(b[7]),.y(y[7]));
	and1 t8(.a(a[8]),.b(b[8]),.y(y[8]));
	and1 t9(.a(a[9]),.b(b[9]),.y(y[9]));
	and1 t10(.a(a[10]),.b(b[10]),.y(y[10]));
	and1 t11(.a(a[11]),.b(b[11]),.y(y[11]));
	and1 t12(.a(a[12]),.b(b[12]),.y(y[12]));
	and1 t13(.a(a[13]),.b(b[13]),.y(y[13]));
	and1 t14(.a(a[14]),.b(b[14]),.y(y[14]));
	and1 t15(.a(a[15]),.b(b[15]),.y(y[15]));
	and1 t16(.a(a[16]),.b(b[16]),.y(y[16]));
	and1 t17(.a(a[17]),.b(b[17]),.y(y[17]));
	and1 t18(.a(a[18]),.b(b[18]),.y(y[18]));
	and1 t19(.a(a[19]),.b(b[19]),.y(y[19]));
	and1 t20(.a(a[20]),.b(b[20]),.y(y[20]));
	and1 t21(.a(a[21]),.b(b[21]),.y(y[21]));
	and1 t22(.a(a[22]),.b(b[22]),.y(y[22]));
	and1 t23(.a(a[23]),.b(b[23]),.y(y[23]));
	and1 t24(.a(a[24]),.b(b[24]),.y(y[24]));
	and1 t25(.a(a[25]),.b(b[25]),.y(y[25]));
	and1 t26(.a(a[26]),.b(b[26]),.y(y[26]));
	and1 t27(.a(a[27]),.b(b[27]),.y(y[27]));
	and1 t28(.a(a[28]),.b(b[28]),.y(y[28]));
	and1 t29(.a(a[29]),.b(b[29]),.y(y[29]));
	and1 t30(.a(a[30]),.b(b[30]),.y(y[30]));
	and1 t31(.a(a[31]),.b(b[31]),.y(y[31]));
    and1 t32(.a(a[32]),.b(b[32]),.y(y[32]));
    and1 t33(.a(a[33]),.b(b[33]),.y(y[33]));
    and1 t34(.a(a[34]),.b(b[34]),.y(y[34]));
    and1 t35(.a(a[35]),.b(b[35]),.y(y[35]));
    and1 t36(.a(a[36]),.b(b[36]),.y(y[36]));
    and1 t37(.a(a[37]),.b(b[37]),.y(y[37]));
    and1 t38(.a(a[38]),.b(b[38]),.y(y[38]));
    and1 t39(.a(a[39]),.b(b[39]),.y(y[39]));
    and1 t40(.a(a[40]),.b(b[40]),.y(y[40]));
    and1 t41(.a(a[41]),.b(b[41]),.y(y[41]));
    and1 t42(.a(a[42]),.b(b[42]),.y(y[42]));
    and1 t43(.a(a[43]),.b(b[43]),.y(y[43]));
    and1 t44(.a(a[44]),.b(b[44]),.y(y[44]));
    and1 t45(.a(a[45]),.b(b[45]),.y(y[45]));
    and1 t46(.a(a[46]),.b(b[46]),.y(y[46]));
    and1 t47(.a(a[47]),.b(b[47]),.y(y[47]));
    and1 t48(.a(a[48]),.b(b[48]),.y(y[48]));
    and1 t49(.a(a[49]),.b(b[49]),.y(y[49]));
    and1 t50(.a(a[50]),.b(b[50]),.y(y[50]));
    and1 t51(.a(a[51]),.b(b[51]),.y(y[51]));
    and1 t52(.a(a[52]),.b(b[52]),.y(y[52]));
    and1 t53(.a(a[53]),.b(b[53]),.y(y[53]));
    and1 t54(.a(a[54]),.b(b[54]),.y(y[54]));
    and1 t55(.a(a[55]),.b(b[55]),.y(y[55]));
    and1 t56(.a(a[56]),.b(b[56]),.y(y[56]));
    and1 t57(.a(a[57]),.b(b[57]),.y(y[57]));
    and1 t58(.a(a[58]),.b(b[58]),.y(y[58]));
    and1 t59(.a(a[59]),.b(b[59]),.y(y[59]));
    and1 t60(.a(a[60]),.b(b[60]),.y(y[60]));
    and1 t61(.a(a[61]),.b(b[61]),.y(y[61]));
    and1 t62(.a(a[62]),.b(b[62]),.y(y[62]));
    and1 t63(.a(a[63]),.b(b[63]),.y(y[63]));
    
endmodule

module xor1(a,b,y);
input a,b;
output reg y;
always @ (a or b) begin
   if (a == 1'b1) begin
   		if(b == 1'b1)
       		y = 1'b0;
       	else
       		y = 1'b1;
   end
   else begin
   		if(b == 1'b1)
       		y = 1'b1;
       	else
       		y = 1'b0;
   end 
end


endmodule

module bitxor(a,b,y);
	input [63:0] a,b;
	output [63:0] y;

	xor1 t0(.a(a[0]),.b(b[0]),.y(y[0]));
	xor1 t1(.a(a[1]),.b(b[1]),.y(y[1]));
	xor1 t2(.a(a[2]),.b(b[2]),.y(y[2]));
	xor1 t3(.a(a[3]),.b(b[3]),.y(y[3]));
	xor1 t4(.a(a[4]),.b(b[4]),.y(y[4]));
	xor1 t5(.a(a[5]),.b(b[5]),.y(y[5]));
	xor1 t6(.a(a[6]),.b(b[6]),.y(y[6]));
	xor1 t7(.a(a[7]),.b(b[7]),.y(y[7]));
	xor1 t8(.a(a[8]),.b(b[8]),.y(y[8]));
	xor1 t9(.a(a[9]),.b(b[9]),.y(y[9]));
	xor1 t10(.a(a[10]),.b(b[10]),.y(y[10]));
	xor1 t11(.a(a[11]),.b(b[11]),.y(y[11]));
	xor1 t12(.a(a[12]),.b(b[12]),.y(y[12]));
	xor1 t13(.a(a[13]),.b(b[13]),.y(y[13]));
	xor1 t14(.a(a[14]),.b(b[14]),.y(y[14]));
	xor1 t15(.a(a[15]),.b(b[15]),.y(y[15]));
	xor1 t16(.a(a[16]),.b(b[16]),.y(y[16]));
	xor1 t17(.a(a[17]),.b(b[17]),.y(y[17]));
	xor1 t18(.a(a[18]),.b(b[18]),.y(y[18]));
	xor1 t19(.a(a[19]),.b(b[19]),.y(y[19]));
	xor1 t20(.a(a[20]),.b(b[20]),.y(y[20]));
	xor1 t21(.a(a[21]),.b(b[21]),.y(y[21]));
	xor1 t22(.a(a[22]),.b(b[22]),.y(y[22]));
	xor1 t23(.a(a[23]),.b(b[23]),.y(y[23]));
	xor1 t24(.a(a[24]),.b(b[24]),.y(y[24]));
	xor1 t25(.a(a[25]),.b(b[25]),.y(y[25]));
	xor1 t26(.a(a[26]),.b(b[26]),.y(y[26]));
	xor1 t27(.a(a[27]),.b(b[27]),.y(y[27]));
	xor1 t28(.a(a[28]),.b(b[28]),.y(y[28]));
	xor1 t29(.a(a[29]),.b(b[29]),.y(y[29]));
	xor1 t30(.a(a[30]),.b(b[30]),.y(y[30]));
	xor1 t31(.a(a[31]),.b(b[31]),.y(y[31]));
    xor1 t32(.a(a[32]),.b(b[32]),.y(y[32]));
    xor1 t33(.a(a[33]),.b(b[33]),.y(y[33]));
    xor1 t34(.a(a[34]),.b(b[34]),.y(y[34]));
    xor1 t35(.a(a[35]),.b(b[35]),.y(y[35]));
    xor1 t36(.a(a[36]),.b(b[36]),.y(y[36]));
    xor1 t37(.a(a[37]),.b(b[37]),.y(y[37]));
    xor1 t38(.a(a[38]),.b(b[38]),.y(y[38]));
    xor1 t39(.a(a[39]),.b(b[39]),.y(y[39]));
    xor1 t40(.a(a[40]),.b(b[40]),.y(y[40]));
    xor1 t41(.a(a[41]),.b(b[41]),.y(y[41]));
    xor1 t42(.a(a[42]),.b(b[42]),.y(y[42]));
    xor1 t43(.a(a[43]),.b(b[43]),.y(y[43]));
    xor1 t44(.a(a[44]),.b(b[44]),.y(y[44]));
    xor1 t45(.a(a[45]),.b(b[45]),.y(y[45]));
    xor1 t46(.a(a[46]),.b(b[46]),.y(y[46]));
    xor1 t47(.a(a[47]),.b(b[47]),.y(y[47]));
    xor1 t48(.a(a[48]),.b(b[48]),.y(y[48]));
    xor1 t49(.a(a[49]),.b(b[49]),.y(y[49]));
    xor1 t50(.a(a[50]),.b(b[50]),.y(y[50]));
    xor1 t51(.a(a[51]),.b(b[51]),.y(y[51]));
    xor1 t52(.a(a[52]),.b(b[52]),.y(y[52]));
    xor1 t53(.a(a[53]),.b(b[53]),.y(y[53]));
    xor1 t54(.a(a[54]),.b(b[54]),.y(y[54]));
    xor1 t55(.a(a[55]),.b(b[55]),.y(y[55]));
    xor1 t56(.a(a[56]),.b(b[56]),.y(y[56]));
    xor1 t57(.a(a[57]),.b(b[57]),.y(y[57]));
    xor1 t58(.a(a[58]),.b(b[58]),.y(y[58]));
    xor1 t59(.a(a[59]),.b(b[59]),.y(y[59]));
    xor1 t60(.a(a[60]),.b(b[60]),.y(y[60]));
    xor1 t61(.a(a[61]),.b(b[61]),.y(y[61]));
    xor1 t62(.a(a[62]),.b(b[62]),.y(y[62]));
    xor1 t63(.a(a[63]),.b(b[63]),.y(y[63]));


endmodule

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
	wire s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
    s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,
    s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,
    s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62,s63,s64;	
	assign y1[63] = a[63];
	
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
	wire s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
    s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,
    s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,
    s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62,s63,s64;
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

module ALU(Control,a,b,y);
	input [63:0] a,b;
    input [1:0] Control;
    output reg [63:0] y;
	wire [63:0] y1,y2,y3,y4;
	reg [63:0] r1,r2,r3,r4;
	bitadder c1(a,b,y1);
	bitsub c2(a,b,y2);
	bitand c3 (a,b,y3);
	bitxor c4(a,b,y4);

	always @(*)
	 begin
		case(Control)
			2'b00: begin	
					y[0] = y1[0];	
					y[1] = y1[1];
					y[2] = y1[2];
					y[3] = y1[3];
					y[4] = y1[4];
					y[5] = y1[5];
					y[6] = y1[6];
					y[7] = y1[7];
					y[8] = y1[8];
					y[9] = y1[9];
					y[10] = y1[10];
					y[11] = y1[11];
					y[12] = y1[12];
					y[13] = y1[13];
					y[14] = y1[14];
					y[15] = y1[15];
					y[16] = y1[16];
					y[17] = y1[17];
					y[18] = y1[18];
					y[19] = y1[19];
					y[20] = y1[20];
					y[21] = y1[21];
					y[22] = y1[22];
					y[23] = y1[23];
					y[24] = y1[24];
					y[25] = y1[25];
					y[26] = y1[26];
					y[27] = y1[27];
					y[28] = y1[28];
					y[29] = y1[29];
					y[30] = y1[30];
					y[31] = y1[31];
					y[32] = y1[32];
					y[33] = y1[33];
					y[34] = y1[34];
					y[35] = y1[35];
					y[36] = y1[36];
					y[37] = y1[37];
					y[38] = y1[38];
					y[39] = y1[39];
					y[40] = y1[40];
					y[41] = y1[41];
					y[42] = y1[42];
					y[43] = y1[43];
					y[44] = y1[44];
					y[45] = y1[45];
					y[46] = y1[46];
					y[47] = y1[47];
					y[48] = y1[48];
					y[49] = y1[49];
					y[50] = y1[50];
					y[51] = y1[51];
					y[52] = y1[52];
					y[53] = y1[53];
					y[54] = y1[54];
					y[55] = y1[55];
					y[56] = y1[56];
					y[57] = y1[57];
					y[58] = y1[58];
					y[59] = y1[59];
					y[60] = y1[60];
					y[61] = y1[61];
                    y[62] = y1[62];
					y[63] = y1[63];
                end
			2'b01:	begin
					y[0] = y2[0];	
					y[1] = y2[1];
					y[2] = y2[2];
					y[3] = y2[3];
					y[4] = y2[4];
					y[5] = y2[5];
					y[6] = y2[6];
					y[7] = y2[7];
					y[8] = y2[8];
					y[9] = y2[9];
					y[10] = y2[10];
					y[11] = y2[11];
					y[12] = y2[12];
					y[13] = y2[13];
					y[14] = y2[14];
					y[15] = y2[15];
					y[16] = y2[16];
					y[17] = y2[17];
					y[18] = y2[18];
					y[19] = y2[19];
					y[20] = y2[20];
					y[21] = y2[21];
					y[22] = y2[22];
					y[23] = y2[23];
					y[24] = y2[24];
					y[25] = y2[25];
					y[26] = y2[26];
					y[27] = y2[27];
					y[28] = y2[28];
					y[29] = y2[29];
					y[30] = y2[30];
					y[31] = y2[31];
                    y[32] = y2[32];
					y[33] = y2[33];
					y[34] = y2[34];
					y[35] = y2[35];
					y[36] = y2[36];
					y[37] = y2[37];
					y[38] = y2[38];
					y[39] = y2[39];
					y[40] = y2[40];
					y[41] = y2[41];
					y[42] = y2[42];
					y[43] = y2[43];
					y[44] = y2[44];
					y[45] = y2[45];
					y[46] = y2[46];
					y[47] = y2[47];
					y[48] = y2[48];
					y[49] = y2[49];
					y[50] = y2[50];
					y[51] = y2[51];
					y[52] = y2[52];
					y[53] = y2[53];
					y[54] = y2[54];
					y[55] = y2[55];
					y[56] = y2[56];
					y[57] = y2[57];
					y[58] = y2[58];
					y[59] = y2[59];
					y[60] = y2[60];
					y[61] = y2[61];
                    y[62] = y2[62];
					y[63] = y2[63];
				end
			2'b10:  begin
					y[0] = y3[0];	
					y[1] = y3[1];
					y[2] = y3[2];
					y[3] = y3[3];
					y[4] = y3[4];
					y[5] = y3[5];
					y[6] = y3[6];
					y[7] = y3[7];
					y[8] = y3[8];
					y[9] = y3[9];
					y[10] = y3[10];
					y[11] = y3[11];
					y[12] = y3[12];
					y[13] = y3[13];
					y[14] = y3[14];
					y[15] = y3[15];
					y[16] = y3[16];
					y[17] = y3[17];
					y[18] = y3[18];
					y[19] = y3[19];
					y[20] = y3[20];
					y[21] = y3[21];
					y[22] = y3[22];
					y[23] = y3[23];
					y[24] = y3[24];
					y[25] = y3[25];
					y[26] = y3[26];
					y[27] = y3[27];
					y[28] = y3[28];
					y[29] = y3[29];
					y[30] = y3[30];
					y[31] = y3[31];
                    y[32] = y3[32];
					y[33] = y3[33];
					y[34] = y3[34];
					y[35] = y3[35];
					y[36] = y3[36];
					y[37] = y3[37];
					y[38] = y3[38];
					y[39] = y3[39];
					y[40] = y3[40];
					y[41] = y3[41];
					y[42] = y3[42];
					y[43] = y3[43];
					y[44] = y3[44];
					y[45] = y3[45];
					y[46] = y3[46];
					y[47] = y3[47];
					y[48] = y3[48];
					y[49] = y3[49];
					y[50] = y3[50];
					y[51] = y3[51];
					y[52] = y3[52];
					y[53] = y3[53];
					y[54] = y3[54];
					y[55] = y3[55];
					y[56] = y3[56];
					y[57] = y3[57];
					y[58] = y3[58];
					y[59] = y3[59];
					y[60] = y3[60];
					y[61] = y3[61];
                    y[62] = y3[62];
					y[63] = y3[63];
				end
			2'b11:  begin
					y[0] = y4[0];	
					y[1] = y4[1];
					y[2] = y4[2];
					y[3] = y4[3];
					y[4] = y4[4];
					y[5] = y4[5];
					y[6] = y4[6];
					y[7] = y4[7];
					y[8] = y4[8];
					y[9] = y4[9];
					y[10] = y4[10];
					y[11] = y4[11];
					y[12] = y4[12];
					y[13] = y4[13];
					y[14] = y4[14];
					y[15] = y4[15];
					y[16] = y4[16];
					y[17] = y4[17];
					y[18] = y4[18];
					y[19] = y4[19];
					y[20] = y4[20];
					y[21] = y4[21];
					y[22] = y4[22];
					y[23] = y4[23];
					y[24] = y4[24];
					y[25] = y4[25];
					y[26] = y4[26];
					y[27] = y4[27];
					y[28] = y4[28];
					y[29] = y4[29];
					y[30] = y4[30];
					y[31] = y4[31];
                    y[32] = y4[32];
					y[33] = y4[33];
					y[34] = y4[34];
					y[35] = y4[35];
					y[36] = y4[36];
					y[37] = y4[37];
					y[38] = y4[38];
					y[39] = y4[39];
					y[40] = y4[40];
					y[41] = y4[41];
					y[42] = y4[42];
					y[43] = y4[43];
					y[44] = y4[44];
					y[45] = y4[45];
					y[46] = y4[46];
					y[47] = y4[47];
					y[48] = y4[48];
					y[49] = y4[49];
					y[50] = y4[50];
					y[51] = y4[51];
					y[52] = y4[52];
					y[53] = y4[53];
					y[54] = y4[54];
					y[55] = y4[55];
					y[56] = y4[56];
					y[57] = y4[57];
					y[58] = y4[58];
					y[59] = y4[59];
					y[60] = y4[60];
					y[61] = y4[61];
                    y[62] = y4[62];
					y[63] = y4[63];
				end

		endcase
					
	 end
	  
endmodule