module data_path(clk,word,increment,a_mux,b_mux,c_mux,ir_en,zero_flag,opcode,check_ra);
	input clk,increment,ir_en;
	output [15:0] word;
	input [1:0] a_mux,b_mux,c_mux;
	input [2:0]opcode;
	output zero_flag;
	wire [15:0] address,instruction;
	output [15:0] check_ra;  // to debug
	
	
	wire [15:0] a_bus_out,reg1_a_in,reg2_a_in,reg3_a_in;
	wire [15:0] b_bus_out,reg1_b_in,reg2_b_in,reg3_b_in;
	wire [15:0] c_bus_out;
	wire reg1_write_en,reg2_write_en,reg3_write_en;
	
	reg_a reg1(.a_bus(reg1_a_in),.b_bus(reg1_b_in),.c_bus(c_bus_out),.clk(clk),.write_en(reg1_write_en));
	reg_b reg2(.a_bus(reg2_a_in),.b_bus(reg2_b_in),.c_bus(c_bus_out),.clk(clk),.write_en(reg2_write_en));
	reg_c reg3(.a_bus(reg3_a_in),.b_bus(reg3_b_in),.c_bus(c_bus_out),.clk(clk),.write_en(reg3_write_en));
	
	pc pc1 (.increment(increment),.address(address),.clk(clk));
	instruction_memory intruct_mem (.clk(clk),.address(address),.instruction(instruction));
	ir ir1 (.en(ir_en),.word(word),.instruction(instruction),.clk(clk));
	
	a_bus_demux a1(.selec(a_mux),.a_bus_out(a_bus_out),.reg1_a_in(reg1_a_in),.reg2_a_in(reg2_a_in),.reg3_a_in(reg3_b_in));
	b_bus_demux b1(.selec(b_mux),.b_bus_out(b_bus_out),.reg1_b_in(reg1_b_in),.reg2_b_in(reg2_b_in),.reg3_b_in(reg3_b_in));
	c_bus_demux c1(.selec(c_mux),.reg1_c_en(reg1_write_en),.reg2_c_en(reg2_write_en),.reg3_c_en(reg3_write_en));
	
	alu alu_1(.a_bus(a_bus_out),.b_bus(b_bus_out),.accumulator(c_bus_out),.zero_flag(zero_flag),.opcode(opcode));
	
	R1_check check_Ra (.a_bus(reg1_a_in),.out_r1(check_ra));
	
	//reg_b reg1(.a_bus(a_bus),.b_bus(b_bus),.c_bus(c_bus),.clk(clk),.en_b(en_B));
	//reg_c reg1(.a_bus(a_bus),.b_bus(b_bus),.c_bus(c_bus),.clk(clk),.en_c(en_C));
endmodule 