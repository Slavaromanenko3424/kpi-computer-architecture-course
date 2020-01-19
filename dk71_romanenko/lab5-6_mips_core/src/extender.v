`define REG_WIDTH 32

module extender(imm16, ext_op, o_data);

input [(`REG_WIDTH/2)-1:0] imm16;
input ext_op;

output reg [`REG_WIDTH-1:0] o_data;

wire [(`REG_WIDTH/2)-1:0] imm16_up;
wire temp;

assign temp = imm16[15] & ext_op;
assign imm16_up = {16{temp}};

always @* begin
	o_data = {imm16_up, imm16};
end
endmodule
