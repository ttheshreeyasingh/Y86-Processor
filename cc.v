module pipereg3(output reg [n:0] out,input [n:0] in,input stall,input [n:0] resetval,input clock);
 parameter width = 8;
 parameter n = width - 1;
 initial begin 
     out <= resetval;
 end
 always @(posedge clock)
  begin
    if (!stall)out <= in;
    end
 endmodule

 // Condition code register is defined here
module cc(output[2:0] cc,input [2:0] new_cc,input  set_cc,input  reset,input  clock);
pipereg3 c(cc, new_cc, ~set_cc, 3'b100, clock);
endmodule