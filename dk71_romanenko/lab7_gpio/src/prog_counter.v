`timescale 1ns/1ps

`define REG_WIDTH 32

module prog_counter(i_data, o_data, clk, arst_n);

input [`REG_WIDTH-1:0] i_data;
input clk, arst_n;

output reg [`REG_WIDTH-1:0] o_data;

always @(posedge clk or negedge arst_n) begin
	if(!arst_n) o_data = 0;
	else o_data = i_data;
end
endmodule
