`define REG_WIDTH 32
`define NUM_OF_CELL 128
`define ADDR_WIDTH $clog2(`NUM_OF_CELL)

module data_memory(i_data, o_data, addr, we, clk);

input [`REG_WIDTH-1:0] i_data;
input [`ADDR_WIDTH-1:0] addr;
input we, clk;

output [`REG_WIDTH-1:0] o_data;

reg [`REG_WIDTH-1:0] ram [`NUM_OF_CELL-1:0];

assign o_data = ram[addr];

initial $readmemb("/home/sr/labs/lab5-6/mem_data.dat", ram);

always @(posedge clk) begin
	if(we) ram[addr] <= i_data;
	$writememh("/home/sr/labs/lab5-6/DMEM_OUT.dat", ram);
end
endmodule

