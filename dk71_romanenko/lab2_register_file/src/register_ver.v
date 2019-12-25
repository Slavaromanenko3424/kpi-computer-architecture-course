`timescale 1ns/1ps
module register_ver(i_CLK, i_ASRST, i_WE, i_data, o_data);

//ports declaration
input i_CLK;	//clock input
input i_ASRST;	//async reset (active low)
input i_WE;		//write enable
input [31:0] i_data;			//input data
output reg [31:0] o_data;	//output (@rising)

always @(posedge i_CLK or negedge i_ASRST) begin
	if (!i_ASRST) begin
		o_data = 32'b0;
	end else if (i_WE) begin
		o_data <= i_data;
	end else begin
		o_data <= o_data;
	end
end

endmodule
