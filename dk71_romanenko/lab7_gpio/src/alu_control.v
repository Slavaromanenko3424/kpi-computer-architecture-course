`timescale 1ns/1ps

`include "/home/sr/labs/lab7/asm_table.v"

module alu_control(op, func, control);

input wire [5:0] op;
input wire [5:0] func;

output reg [4:0] control;

integer temp;

always @* begin
	if(!op) temp = func;
	else temp = op;
	
	casez(op)
		`BEQ: temp = `SUB;
		`BNE: temp = `SUB;
		`LW: temp = `ADD;
		`SW: temp = `ADD;
		default: control = temp[4:0];
	endcase
	
	control = temp[4:0];
end
endmodule
