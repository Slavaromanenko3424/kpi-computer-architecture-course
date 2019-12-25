`timescale 1ns/1ps
module demux_ver(i_ADDR, i_data, o_data);

//ports declaration
input [4:0] i_ADDR;	//addres
input i_data;			//input data
output reg [31:0] o_data;	//output

always @* begin
	o_data = i_data << i_ADDR;
end

endmodule
