`timescale 1ns/1ps
`include "/home/sr/labs/lab4/defines.v"

module div(first_op, second_op, o_data_div, o_data_rem);

input signed [`REG_WIDTH-1:0] first_op;
input signed [`REG_WIDTH-1:0] second_op;

output reg signed [`REG_WIDTH-1:0] o_data_div;
output reg [`REG_WIDTH-1:0] o_data_rem;

always @* begin
	o_data_div = first_op / second_op;
	o_data_rem = first_op % second_op;
end
endmodule
