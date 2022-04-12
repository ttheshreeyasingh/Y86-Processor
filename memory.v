// memory module
module memory(input [63:0] address_mem, input [63:0] valA_mem, input read_mem, input write_mem, output reg [63:0] data_memory, output reg error_mem);

reg [63:0] mem [8191:0];
initial begin
    error_mem <= 0;
end
always @ (address_mem,valA_mem,read_mem,write_mem) begin 
    if (write_mem && !read_mem)
        mem[address_mem] = valA_mem;
    if (!write_mem && read_mem)
        data_memory = mem[address_mem];
    end
endmodule
