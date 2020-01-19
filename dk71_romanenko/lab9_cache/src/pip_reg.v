`timescale 1ns/1ps

module pip_reg #(parameter WIDTH = 1)(i_data, o_data, clk, we, srst_n, arst_n);

input [WIDTH-1:0] i_data;
input clk, we, srst_n, arst_n;

output reg [WIDTH-1:0] o_data;

always @(posedge clk or negedge arst_n) begin
	if(!arst_n)  o_data <= 0;		
	else if(we) begin
		if(!srst_n) o_data <= 0;
		else o_data <= i_data;
	end 
	else o_data <= o_data;
end

endmodule