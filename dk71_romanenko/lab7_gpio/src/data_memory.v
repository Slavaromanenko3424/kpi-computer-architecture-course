`timescale 1ns/1ps

`define REG_WIDTH 32
`define NUM_OF_CELL 128
`define DM_ADDR_WIDTH $clog2(`NUM_OF_CELL)

module data_memory(i_data, o_data, addr, we, clk);

input [`REG_WIDTH-1:0] i_data;
input [`ADDR_WIDTH-1:0] addr;
input we, clk;

output [`REG_WIDTH-1:0] o_data;

reg [`REG_WIDTH-1:0] ram [`NUM_OF_CELL-1:0];

assign o_data = ram[addr];

initial $readmemb("/home/sr/labs/lab7/mem_data.dat", ram);

initial $writememh("/home/sr/labs/lab7/DMEM_OUT.dat", ram);

always @(posedge clk) begin
	if(we) ram[addr] <= i_data;
end
endmodule

