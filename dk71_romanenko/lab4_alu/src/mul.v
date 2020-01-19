`timescale 1ns/1ps
`include "/home/drcah4ec/lab4_alu/defines.v"

module mul(first_op, second_op, o_data_h, o_data_l);

input signed [`REG_WIDTH-1:0] first_op;
input signed [`REG_WIDTH-1:0] second_op;

output reg signed [`REG_WIDTH-1:0] o_data_h;
output reg signed [`REG_WIDTH-1:0] o_data_l;

wire signed [`REG_WIDTH*2-1:0] o_data;

assign o_data = first_op * second_op;

always @* begin
	
	o_data_h = o_data[`REG_WIDTH*2-1:`REG_WIDTH];
	o_data_l = o_data[`REG_WIDTH-1:0];

end
endmodule
