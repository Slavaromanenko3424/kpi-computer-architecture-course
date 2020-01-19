`define REG_WIDTH 32
`define ADDR_WIDTH $clog2(`REG_WIDTH)

module bus_mux(addr, i_data_0, i_data_1, o_data); //this mux will be expanded in future

input [`ADDR_WIDTH-1:0] addr;
input [`REG_WIDTH-1:0] i_data_0;
input [`REG_WIDTH-1:0] i_data_1;

output reg [`REG_WIDTH-1:0] o_data;

always @* begin
	casez(addr)
		0: o_data = i_data_0;
		1: o_data = i_data_1;
		default: o_data = 0;
	endcase
end


endmodule
