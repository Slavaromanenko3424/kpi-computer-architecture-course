`timescale 1ns/1ps

`include "/home/drcah4ec/lab4_alu/defines.v"

module alu(first_op, second_op, ovf_flag, cf_flag, zero_flag_h, zero_flag_l, alu_o_data_l, alu_o_data_h, alu_sel);
//REGISTERS AND WIRES DESCRIPTION

input [`REG_WIDTH-1:0] first_op;
input [`REG_WIDTH-1:0] second_op;
input [`ALU_SEL_WIDTH-1:0] alu_sel;

output reg ovf_flag = 0, zero_flag_l = 0, cf_flag = 0, zero_flag_h = 0;
output reg [`REG_WIDTH-1:0] alu_o_data_l;
output reg [`REG_WIDTH-1:0] alu_o_data_h = 0;

wire [`REG_WIDTH-1:0] bs_res, log_res, addsub_res, mul_res_l, mul_res_h, div_res_div, div_res_rem;
wire as_ovf, as_cf;

	
//EXTERNALS MODULES
	
barrel barrel_0(alu_sel[`BS_DIAP], first_op[`BS_SA_DIAP], second_op[`REG_WIDTH-1:0], bs_res[`REG_WIDTH-1:0]);

addsub addsub_0(first_op[`REG_WIDTH-1:0], second_op[`REG_WIDTH-1:0], alu_sel[`ADDSUB_DIAP], addsub_res[`REG_WIDTH-1:0], as_ovf, as_cf);

mul mul_0(first_op[`REG_WIDTH-1:0], second_op[`REG_WIDTH-1:0], mul_res_h[`REG_WIDTH-1:0], mul_res_l[`REG_WIDTH-1:0]);

div div_0(first_op[`REG_WIDTH-1:0], second_op[`REG_WIDTH-1:0], div_res_div[`REG_WIDTH-1:0], div_res_rem[`REG_WIDTH-1:0]);

logic logic_0(first_op[`REG_WIDTH-1:0], second_op[`REG_WIDTH-1:0], alu_sel[`LOGIC_DIAP], log_res[`REG_WIDTH-1:0]);

//MAIN BLOCK
always @* begin
	
	casez(alu_sel[`ALU_OP_DIAP])
	
		`BS: begin
			alu_o_data_l = bs_res;
			alu_o_data_h = 0;
			ovf_flag = 0;
			cf_flag = 0;
		end
		
		`ADDSUB: begin
			alu_o_data_l = addsub_res;
			alu_o_data_h = 0;
			ovf_flag = as_ovf;
			cf_flag = as_cf;
		end
		
		`MUL: begin
			alu_o_data_l = mul_res_l;
			alu_o_data_h = mul_res_h;
			ovf_flag = 0;
			cf_flag = 0;
		end
		
		`DIV: begin
			alu_o_data_l = div_res_div;
			alu_o_data_h = div_res_rem;
			ovf_flag = 0;
			cf_flag = 0;
		end
		
		`LOGIC:begin
			alu_o_data_l = log_res;
			alu_o_data_h = 0;
			ovf_flag = 0;
			cf_flag = 0;
		end
		default: begin
			alu_o_data_h = 0;
			alu_o_data_l = 0;
			ovf_flag = 0;
			cf_flag = 0;
		end
	endcase
	
	zero_flag_l = ~| alu_o_data_l;
	zero_flag_h = ~| alu_o_data_h;
end
endmodule
