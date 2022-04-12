// The fetch stage includes the instruction memory hardware unit.
// This unit reads 10 bytes from memory at a time, using the PC as the address of
// the first byte (byte 0).

module InstructionMemory(input [63:0] f_pc,output reg[7:0] f_ibyte,output reg[71:0] f_ibytes,output reg imem_error);
    reg [7:0] instruction_mem [0:68];
    initial begin
            $readmemh("./instructions.mem", instruction_mem);
            $display("init");
        end
    always @(f_pc)begin
        $display(instruction_mem[f_pc]);
        f_ibyte <= instruction_mem[f_pc];
        f_ibytes[71:64] <= instruction_mem[f_pc+1];
        f_ibytes[63:56] <= instruction_mem[f_pc+2];
        f_ibytes[55:48] <= instruction_mem[f_pc+3];
        f_ibytes[47:40] <= instruction_mem[f_pc+4];
        f_ibytes[39:32] <= instruction_mem[f_pc+5];
        f_ibytes[31:24] <= instruction_mem[f_pc+6];
        f_ibytes[23:16] <= instruction_mem[f_pc+7];
        f_ibytes[15:8] <= instruction_mem[f_pc+8];
        f_ibytes[7:0] <= instruction_mem[f_pc+9];
        imem_error <= (f_pc < 64'd0 || f_pc > 64'd2047 ) ? 1'b1:1'b0;
    end

endmodule

// This byte is interpreted as the instruction byte and is split (by the module labeled “Split”) into two 4-bit quantities.
// The output of this module is two variables f_icode and f_ifun which are respectively the instruction and function codes.
// These variables equals either the values read from memory or, in the event that the instruction address is not valid (as indicated by the signal imem_error), 
// the values corresponding to a nop instruction. Based on the value of f_icode, we can compute three 1-bit signals
module split(input [7:0] f_ibyte,output [3:0] f_icode,output [3:0] f_ifun);
assign f_icode = f_ibyte[7:4];
assign f_ifun = f_ibyte[3:0];
endmodule


// instr_valid - Indicates if this byte correspond to a legal Y86-64 instruction. This signal is used to detect an illegal instruction.
// need_regids - Indicates if this instruction include a register specifier byte.
// need_valC - Indicates if this instruction include a constant word.
// Extract immediate word from 9 bytes of instruction
module align(input [71:0] f_ibytes, input need_regids, output [ 3:0]  rA, output [ 3:0]  rB, output [63:0] valC);
assign rA = f_ibytes[71:68];
assign rB = f_ibytes[67:64];
assign valC = need_regids ? f_ibytes[63:0] : f_ibytes[71:8];
endmodule

// PC incrementer depends on whether we have set bit in need_regids and need_valC so that we increment 
// the value of PC by the appropriate value to fetch the next instruction
module pc_increment(input [63:0] pc, input  need_regids, input need_valC,output [63:0] valP);
assign valP = pc + 1 + 8*need_valC + need_regids;
endmodule
