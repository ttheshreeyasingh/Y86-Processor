// Clocked register with enable signal
// Default width is 8, but can be altered
 module cenreg64(out, in, enable, reset, value, clock);
    output [63:0] out;
    reg [63:0] out;
    input [63:0] in;
    input [63:0] value;
    input enable;
    input reset;
    input clock;
    always
        @(posedge clock)
        begin
        if (reset)out <= value;
        else if (enable)  out <= in;
        end
endmodule

// Default width is 4, but can be altered
 module cenreg4(out, in, enable, reset, value, clock);
    output [3:0] out;
    reg [3:0] out;
    input [3:0] in;
    input [3:0] value;
    input enable;
    input reset;
    input clock;
    always
        @(posedge clock)
        begin
        if (reset)out <= value;
        else if (enable)  out <= in;
        end
endmodule

// Default width is 3, but can be changed
module cenreg3(out, in, enable, reset, value, clock);
    output [2:0] out;
    input [2:0] in;
    input enable;
    input reset;
    input [2:0] value;
    input clock;
    reg [2:0] out;
    always
        @(posedge clock)
        begin
        if (reset)  out <= value;
        else if (enable) out <= in;
        end
endmodule


module cenreg1(out, in, enable, reset, value, clock);
    output out;
    input in;
    input enable;
    input reset;
    input value;
    input clock;
    reg out;
    always
        @(posedge clock)
        begin
        if (reset) out <= value;
        else if (enable) out <= in;
        end
endmodule

// Using indicator as reset signal, bubble is injected. 
module pipereg64(out, in, stall, bubbleval, clock);
    output [63:0] out;
    input [63:0] in;
    input stall;
    input [63:0] bubbleval;
    input clock;
    reg [63:0] out;

    initial begin 
     out <= bubbleval;
 end
 always @(posedge clock) begin
    if (!stall) out <= in;
    end

endmodule

module pipereg4(out, in, stall, bubbleval, clock);
    output [3:0] out;
    input [3:0] in;
    input stall;
    input [3:0] bubbleval;
    input clock;
    reg [3:0] out;

    initial begin 
     out <= bubbleval;
 end
 always @(posedge clock) begin
    if (!stall) out <= in;
    end

endmodule

module pipereg3(out, in, stall, bubbleval,clock);
    output [2:0] out;
    input [2:0] in;
    input stall;  
    input [2:0] bubbleval;
    input clock;
    reg [2:0] out;
    initial begin 
     out <= bubbleval;
 end
 always @(posedge clock) begin
    if (!stall) out <= in;
    end
endmodule

module pipereg1(out, in, stall, bubbleval, clock);
    output out;
    input in;
    input stall;
    input bubbleval;
    input clock;
    reg out;
    initial begin 
     out <= bubbleval;
 end
 always @(posedge clock) begin
    if (!stall)
        out <= in;
    end
endmodule

module pipregnew(out, in, stall,bubble, bubbleval, clock);
 output reg [3:0] out;
 input [3:0] in;
 input stall,bubble;
 input [3:0] bubbleval;
 input clock;

 initial begin 
     out <= bubbleval;
 end
 always @(posedge clock)
  begin
    if (!stall && !bubble) out <= in;
    else if (!stall && bubble)out <= bubbleval;
    end
 endmodule
