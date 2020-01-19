
`define REG_WIDTH 32
`define INSTR_ADDR_WIDTH 32
`define NUM_OF_INSTRUCTIONS 128

module instruction_memory(addr, inst);

input [`INSTR_ADDR_WIDTH-1:0] addr;

output [`REG_WIDTH-1:0] inst;

reg [`REG_WIDTH-1:0] instruction_mem [`NUM_OF_INSTRUCTIONS-1:0];

assign inst = instruction_mem[addr];

initial $readmemb("/home/sr/labs/lab5-6/instruction.instr", instruction_mem);

endmodule
