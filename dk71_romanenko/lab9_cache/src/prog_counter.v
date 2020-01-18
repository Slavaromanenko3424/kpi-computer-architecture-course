`timescale 1ns/1ps

module prog_counter #(parameter WIDTH = 1)(i_data, o_data, clk, arst_n, en);

input [WIDTH-1:0] i_data;
input clk, arst_n;
input en;

output reg [WIDTH-1:0] o_data;

always @(posedge clk or negedge arst_n) begin
	if(!arst_n) o_data <= 0;
	else if(en)
		o_data <= i_data;
	else
		o_data <= o_data;
end
endmodule
