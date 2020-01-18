`timescale 1ns/1ps

`include "/home/sr/labs/lab8/asm_table.v"

module alu_control(op, func, control);
input wire [5:0] op;
input wire [5:0] func;

output reg [4:0] control;

always @* begin

	if(op != 0) begin
		if(op == `LW || op == `SW) control <= `ADD;
		else control <= op[4:0];
	end
	else control <= func[4:0];

end
endmodule
