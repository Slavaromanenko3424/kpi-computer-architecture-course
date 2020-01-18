`timescale 1ns/1ps

module data_memory #(parameter WIDTH = 1, VOLUME = 1)(d_in, o_data, addr, we, clk);

localparam ADDR_WIDTH = $clog2(VOLUME);

input [WIDTH-1:0] d_in;
input [ADDR_WIDTH-1:0] addr;
input we, clk;

output [WIDTH-1:0] o_data;

reg [WIDTH-1:0] ram [VOLUME-1:0];

assign o_data = ram[addr];

initial $readmemb("/home/sr/labs/lab8/mem_data.dat", ram);

always @(posedge clk) begin
	if(we) ram[addr] <= d_in;
end
endmodule

