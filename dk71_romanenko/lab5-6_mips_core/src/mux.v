`timescale 1ns/1ps

`define REG_WIDTH 32

module mux(addr, i_data_0, i_data_1, o_data);

input addr;
input [`REG_WIDTH-1:0] i_data_0, i_data_1;

output reg [`REG_WIDTH-1:0] o_data;

always @* begin
	if(addr) o_data = i_data_1;
	else o_data = i_data_0;
end
endmodule
