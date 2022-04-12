 // The instruction fields are decoded to provide register identifiers for four addresses, two read and two write, that the register file uses.
 // valA and valB become signals that are read from the register file. 
 // valE and valM which are the 2 write back values are the data for the writes.
 // Reset is used for setting all registers to 0
 module regfile( input [3:0] dstE, input [63:0] valE, input [3:0] dstM, input [63:0] valM, input [3:0] srcA, output [63:0] valA, input [3:0] srcB, output [63:0] valB, input reset, input clock,
 output [63:0] rax, rcx, rdx, rbx, rsp, rbp, rsi, rdi,r8, r9, r10, r11, r12, r13, r14);
  
 // In each cycle, we must update the value in the registers stored in the register file with the required value that will be utilised in the next cycle.
 // Input data for each register is defined below
 wire [63:0] rax_d, rcx_d, rdx_d, rbx_d, rsp_d, rbp_d, rsi_d, rdi_d, r8_d, r9_d, r10_d, r11_d,r12_d, r13_d, r14_d;

 // Input write controls for each register is defined below
 wire rax_w, rcx_w, rdx_w, rbx_w, rsp_w, rbp_w, rsi_w, rdi_w,r8_w, r9_w, r10_w, r11_w,r12_w, r13_w, r14_w;

 // Define names for registers used in HCL code
 parameter RRAX = 4'h0;
 parameter RRCX = 4'h1;
 parameter RRDX = 4'h2;
 parameter RRBX = 4'h3;
 parameter RRSP = 4'h4;
 parameter RRBP = 4'h5;
 parameter RRSI = 4'h6;
 parameter RRDI = 4'h7;
 parameter R8 = 4'h8;
 parameter R9 = 4'h9;
 parameter R10 = 4'ha;
 parameter R11 = 4'hb;
 parameter R12 = 4'hc;
 parameter R13 = 4'hd;
 parameter R14 = 4'he;
 parameter RRNONE = 4'hf;

 // On the positive edge of the clock, we update the relevant values in the registers at the start of the cycle.
 // Implementation with clocked registers
 // bit 0 = 64'b0
 reg temp = 1'b0;
cenreg64 rax_reg(rax, rax_d, rax_w, temp, 64'b0, clock);
cenreg64 rcx_reg(rcx, rcx_d, rcx_w, temp, 64'b0, clock);
cenreg64 rdx_reg(rdx, rdx_d, rdx_w, temp, 64'b0, clock);
cenreg64 rbx_reg(rbx, rbx_d, rbx_w, temp, 64'b0, clock);
cenreg64 rsp_reg(rsp, rsp_d, rsp_w, temp, 64'b0, clock);
cenreg64 rbp_reg(rbp, rbp_d, rbp_w, temp, 64'b0, clock);
cenreg64 rsi_reg(rsi, rsi_d, rsi_w, temp, 64'b0, clock);
cenreg64 rdi_reg(rdi, rdi_d, rdi_w, temp, 64'b0, clock);
cenreg64 r8_reg(r8, r8_d, r8_w, temp, 64'b0, clock);
cenreg64 r9_reg(r9, r9_d, r9_w, temp, 64'b0, clock);
cenreg64 r10_reg(r10, r10_d, r10_w, temp, 64'b0, clock);
cenreg64 r11_reg(r11, r11_d, r11_w, temp, 64'b0, clock);
cenreg64 r12_reg(r12, r12_d, r12_w, temp, 64'b0, clock);
cenreg64 r13_reg(r13, r13_d, r13_w, temp, 64'b0, clock);
cenreg64 r14_reg(r14, r14_d, r14_w, temp, 64'b0, clock);

 assign valA =
 srcA == RRAX ? rax :
 srcA == RRCX ? rcx :
 srcA == RRDX ? rdx :
 srcA == RRBX ? rbx :
 srcA == RRSP ? rsp :
 srcA == RRBP ? rbp :
 srcA == RRSI ? rsi :
 srcA == RRDI ? rdi :
 srcA == R8 ? r8 :
 srcA == R9 ? r9 :
 srcA == R10 ? r10 :
 srcA == R11 ? r11 :
 srcA == R12 ? r12 :
 srcA == R13 ? r13 :
 srcA == R14 ? r14 :
 0;

 assign valB =
 srcB == RRAX ? rax :
 srcB == RRCX ? rcx :
 srcB == RRDX ? rdx :
 srcB == RRBX ? rbx :

 srcB == RRSP ? rsp :
 srcB == RRBP ? rbp :
 srcB == RRSI ? rsi :
 srcB == RRDI ? rdi :
 srcB == R8 ? r8 :
 srcB == R9 ? r9 :
 srcB == R10 ? r10 :
 srcB == R11 ? r11 :
 srcB == R12 ? r12 :
 srcB == R13 ? r13 :
 srcB == R14 ? r14 :
 0;

 assign rax_d = dstM == RRAX ? valM : valE;
 assign rcx_d = dstM == RRCX ? valM : valE;
 assign rdx_d = dstM == RRDX ? valM : valE;
 assign rbx_d = dstM == RRBX ? valM : valE;
 assign rsp_d = dstM == RRSP ? valM : valE;
 assign rbp_d = dstM == RRBP ? valM : valE;
 assign rsi_d = dstM == RRSI ? valM : valE;
 assign rdi_d = dstM == RRDI ? valM : valE;
 assign r8_d = dstM == R8 ? valM : valE;
 assign r9_d = dstM == R9 ? valM : valE;
 assign r10_d = dstM == R10 ? valM : valE;
 assign r11_d = dstM == R11 ? valM : valE;
 assign r12_d = dstM == R12 ? valM : valE;
 assign r13_d = dstM == R13 ? valM : valE;
 assign r14_d = dstM == R14 ? valM : valE;

 assign rax_w = dstM == RRAX | dstE == RRAX;
 assign rcx_w = dstM == RRCX | dstE == RRCX;
 assign rdx_w = dstM == RRDX | dstE == RRDX;
 assign rbx_w = dstM == RRBX | dstE == RRBX;
 assign rsp_w = dstM == RRSP | dstE == RRSP;
 assign rbp_w = dstM == RRBP | dstE == RRBP;
 assign rsi_w = dstM == RRSI | dstE == RRSI;
 assign rdi_w = dstM == RRDI | dstE == RRDI;
 assign r8_w = dstM == R8 | dstE == R8;
 assign r9_w = dstM == R9 | dstE == R9;
 assign r10_w = dstM == R10 | dstE == R10;
 assign r11_w = dstM == R11 | dstE == R11;
 assign r12_w = dstM == R12 | dstE == R12;
 assign r13_w = dstM == R13 | dstE == R13;
 assign r14_w = dstM == R14 | dstE == R14;


 endmodule
