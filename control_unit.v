module control_unit(clk,instruction,increment,a_mux,b_mux,c_mux,alu_in,ir_en,zero_flag);
	input clk,zero_flag;
	output reg increment,ir_en;
	output reg [2:0] alu_in;
	output reg [1:0] a_mux,b_mux,c_mux;
	input [15:0] instruction; 
	
	parameter state_1=2'b00 ,state_2=2'b01, state_3= 2'b11;
	parameter add=3'b000,sub=3'b001,mul=3'b010;
	parameter reg1=2'b01,reg2=2'b10,reg3=2'b11;
	
	reg [1:0] state;
	
	reg [15:0] reg_instruction;
	reg [2:0]  reg_opcode;
	
	
	always @(posedge clk) begin
		case(state)
			state_1:begin
				increment=1'b0;ir_en=1'b0;alu_in=3'b000;a_mux=2'b00;b_mux=2'b00;c_mux=2'b00;
				increment=1'b1;
				ir_en=1'b1;
				state=state_2;
			end
			state_2:begin
				reg_instruction= instruction;
				reg_opcode=reg_instruction[15:13];
				if(reg_instruction[15:13]==add || reg_instruction[15:13]==sub || reg_instruction[15:13]==mul) begin
					alu_in=reg_instruction[15:13];a_mux=reg_instruction[12:11];b_mux=reg_instruction[10:9];c_mux=reg_instruction[8:7];
					state=state_3;
					end
				ir_en=1'b0;	increment=1'b0;
			end
			state_3:begin
				if(reg_instruction[15:13]==add || reg_instruction[15:13]==sub || reg_instruction[15:13]==mul) begin
					state=state_1;
					c_mux=2'b00;
				end
			end
			default:state=state_1;
		endcase
	end
	
endmodule 
