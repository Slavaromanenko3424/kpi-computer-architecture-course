`timescale 1ns/1ps

module by_mux #(parameter WIDTH = 1)(i_data_0, i_data_1, i_data_2, o_data, addr);

input [WIDTH-1:0] i_data_0;
input [WIDTH-1:0] i_data_1;
input [WIDTH-1:0] i_data_2;
input [1:0] addr;

output reg [31:0] o_data;

always @* begin
	casez(addr)
		0: o_data <= i_data_0;
		1: o_data <= i_data_1;
		2: o_data <= i_data_2;
		default o_data <= 0;
	endcase
end



endmodule
