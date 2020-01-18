`timescale 1ns/1ps
`include "/home/sr/labs/lab4/defines.v"

module addsub(first_op, second_op, addsub, addsub_o_data, ovf, cf);

input [`REG_WIDTH-1:0] first_op;
input [`REG_WIDTH-1:0] second_op;
input addsub;

output reg [`REG_WIDTH-1:0] addsub_o_data;
output reg ovf = 0;
output reg cf = 0;

wire [`REG_WIDTH-1:0] temp;

assign temp = second_op ^ {`REG_WIDTH{addsub}};

always @* begin
  
	{cf, addsub_o_data} = first_op + temp | addsub;
	ovf = (temp[`REG_WIDTH-1] ^ first_op[`REG_WIDTH-1]) ^ cf;
	
end
endmodule
