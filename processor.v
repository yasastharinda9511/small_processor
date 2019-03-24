module processor(clk, check_ra);
	input clk;
	wire increment,ir_en;
	wire [15:0] word;
	wire [1:0] a_mux,b_mux,c_mux;
	wire [2:0]opcode;
	wire zero_flag;
	output [15:0]check_ra;
	
	data_path dp (
	.clk(clk),
	.word(word),
	.increment(increment),
	.a_mux(a_mux),
	.b_mux(b_mux),
	.c_mux(c_mux),
	.opcode(opcode),
	.ir_en(ir_en),
	.zero_flag(zero_flag),
	.check_ra(check_ra));
	
	
	control_unit cu (.clk(clk),
	.instruction(word),
	.increment(increment),
	.a_mux(a_mux),
	.b_mux(b_mux),
	.c_mux(c_mux),
	.alu_in(opcode),
	.ir_en(ir_en),
	.zero_flag(zero_flag));
	
endmodule
