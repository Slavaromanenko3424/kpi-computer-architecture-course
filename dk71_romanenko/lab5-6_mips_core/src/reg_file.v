`timescale 1ns/1ps

`define REG_WIDTH 32
`define REG_ADDR_WIDTH 5

`define NUM_OF_REGS 32

module reg_file(i_data, write_addr, clk, we, read_addr_a, o_data_a, read_addr_b, o_data_b);

input [`REG_WIDTH-1:0] i_data;
input [`REG_ADDR_WIDTH-1:0] write_addr;
input [`REG_ADDR_WIDTH-1:0] read_addr_a;
input [`REG_ADDR_WIDTH-1:0] read_addr_b;
input clk, we;

output [`REG_WIDTH-1:0] o_data_a;
output [`REG_WIDTH-1:0] o_data_b;

reg [`REG_WIDTH-1:0] reg_file32b_32 [`NUM_OF_REGS-1:0];

assign o_data_a = read_addr_a == 0 ? 0 :  reg_file32b_32[read_addr_a];
assign o_data_b = read_addr_b == 0 ? 0 :  reg_file32b_32[read_addr_b];

initial $readmemb("/home/sr/labs/lab5-6/reg_data.dat", reg_file32b_32);

always @(posedge clk) begin
	if(we && write_addr) reg_file32b_32[write_addr] = i_data;
	$writememh("/home/sr/labs/lab5-6/OUT.dat", reg_file32b_32);
end
endmodule
