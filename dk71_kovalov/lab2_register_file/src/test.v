// Generated by Quartus II 64-Bit Version 13.0 (Build Build 232 06/12/2013)
// Created on Sat Sep 14 13:03:06 2019

`timescale 1ns/1ps

module test;

reg clk_sig;
reg we_sig;
reg arstn_sig;
reg [4:0] adr_sig, readadrA_sig, readadrB_sig;
reg [31:0] data_sig;
wire [31:0] A_sig, B_sig;

lab2_register_file lab2_register_file_inst(
	.adr(adr_sig) ,	// input [4:0] adr_sig
	.we(we_sig) ,	// input  we_sig
	.data(data_sig) ,	// input [31:0] data_sig
	.clk(clk_sig) ,	// input  clk_sig
	.arstn(arstn_sig) ,	// input  arstn_sig
	.readadrA(readadrA_sig) ,	// input [4:0] readadrA_sig
	.readadrB(readadrB_sig) ,	// input [4:0] readadrB_sig
	.A(A_sig) ,	// output [31:0] A_sig
	.B(B_sig) 	// output [31:0] B_sig
);

initial begin
	clk_sig=1'b0;
	forever #1 clk_sig=~clk_sig;
end

initial begin 
	arstn_sig=1'b1;
	#2 arstn_sig=1'b0;
	#2 arstn_sig=1'b1;

end

initial begin 

	we_sig=1'b0;
	adr_sig = 5'b00000;
	readadrA_sig=5'b00000;
	readadrB_sig=5'b00000;
	data_sig=32'h12345678;
	#8 we_sig=1'b1;
	#2 we_sig=1'b0;

	repeat(31) begin
		#4 data_sig= data_sig + 1;
		readadrA_sig = readadrA_sig + 1;
		readadrB_sig = readadrB_sig + 1;
		adr_sig = adr_sig + 1;
		#2 we_sig=1'b1;
		#2 we_sig=1'b0;
	end
	
end

initial begin 
	#400 $stop();
end

endmodule

