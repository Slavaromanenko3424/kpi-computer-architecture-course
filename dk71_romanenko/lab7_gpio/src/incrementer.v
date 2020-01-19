`timescale 1ns/1ps

`define REG_WIDTH 32

module incrementer(i_data, o_data);

input [`REG_WIDTH-1:0] i_data;

output reg [`REG_WIDTH-1:0] o_data;

integer i;

always @* begin
	o_data <= i_data + 1;
end
endmodule

