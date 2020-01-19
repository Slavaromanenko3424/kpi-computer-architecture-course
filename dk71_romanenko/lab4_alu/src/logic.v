`timescale 1ns/1ps
`include "/home/sr/labs/lab4/defines.v"

`define AND 2'b00
`define OR 2'b01
`define NOR 2'b10
`define XOR 2'b11

module logic(first_op, second_op, log_func, logic_o_data);

input [`REG_WIDTH-1:0] first_op;
input [`REG_WIDTH-1:0] second_op;
input [1:0] log_func;

output reg [`REG_WIDTH-1:0] logic_o_data;

always @* begin
	casez(log_func)
		`AND: logic_o_data = first_op & second_op;
		`OR: logic_o_data = first_op | second_op;
		`NOR: logic_o_data = ~(first_op | second_op);
		`XOR: logic_o_data = first_op ^ second_op;
	endcase


end
endmodule
