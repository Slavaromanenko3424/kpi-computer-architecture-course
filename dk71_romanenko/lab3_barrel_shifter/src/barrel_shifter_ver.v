`timescale 1ns/1ps

`define SLL 3'b?00
`define SRL 3'b010
`define ROR 3'b011
`define SRA 3'b11?
`define ROL 3'b?01

`define OPSEL_WIDTH 3
`define REG_WIDTH 32
`define SA_WIDTH 5

module barrel(sel_shift, shift_amount, data_in, o_data);

input  [`OPSEL_WIDTH-1:0]  sel_shift;
input  [`SA_WIDTH-1:0]  shift_amount;
input  [`REG_WIDTH-1:0] data_in;
output reg[`REG_WIDTH-1:0] o_data;

wire [`REG_WIDTH*2-1:0] temp1, temp2; 
wire arithm, is_arithm_shift;

assign is_arithm_shift = sel_shift[2];
assign arithm = data_in[`REG_WIDTH-1] & is_arithm_shift;
assign temp1 = {data_in, data_in} << shift_amount;
assign temp2 = $signed({arithm, data_in, data_in}) >>> shift_amount;

always @* begin

	casez(sel_shift)
		`SLL: o_data = temp1[`REG_WIDTH-1:0];
		`SRL: o_data = temp2[`REG_WIDTH*2-1:`REG_WIDTH];
		`ROR: o_data = temp2[`REG_WIDTH-1:0];
		`ROL: o_data = temp1[`REG_WIDTH*2-1:`REG_WIDTH];
		`SRA: o_data = temp2[`REG_WIDTH*2-1:`REG_WIDTH];
	endcase
end

endmodule
