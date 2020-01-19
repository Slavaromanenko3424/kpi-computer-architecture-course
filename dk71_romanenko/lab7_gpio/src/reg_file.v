`timescale 1ns/1ps

`define REG_WIDTH 32
`define REG_ADDR_WIDTH 5

`define NUM_OF_REGS 32

module reg_file(i_data, write_addr, clk, we, read_addr_a, o_data_a, read_addr_b, o_data_b, arst_n);

input [`REG_WIDTH-1:0] i_data;
input [`REG_ADDR_WIDTH-1:0] write_addr;
input [`REG_ADDR_WIDTH-1:0] read_addr_a;
input [`REG_ADDR_WIDTH-1:0] read_addr_b;
input clk, we , arst_n;

output [`REG_WIDTH-1:0] o_data_a;
output [`REG_WIDTH-1:0] o_data_b;

reg [`REG_WIDTH-1:0] reg_file32b_32 [`NUM_OF_REGS-1:0];

assign o_data_a = read_addr_a == 0 ? 0 :  reg_file32b_32[read_addr_a];
assign o_data_b = read_addr_b == 0 ? 0 :  reg_file32b_32[read_addr_b];

integer i;

initial $readmemb("/home/sr/labs/lab7/reg_data.dat", reg_file32b_32);

always @(posedge clk or negedge arst_n) begin
	if(!arst_n) begin
		for(i = 0; i < `NUM_OF_REGS; i = i + 1)
			reg_file32b_32[i] = 32'b0;
	end else
		if(we && write_addr) reg_file32b_32[write_addr] = i_data;	
end
endmodule