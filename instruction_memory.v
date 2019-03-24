module instruction_memory(clk,address,instruction);
	input clk;
	input [15:0] address;
	output [15:0] instruction;
	reg [15:0]instruction_memory [65535:0];
	
	initial begin
		instruction_memory[0]=16'b010011001xxxxxxx;
		instruction_memory[1]=16'b010011001xxxxxxx;
		instruction_memory[2]=16'b010011001xxxxxxx;
		instruction_memory[3]=16'b010011001xxxxxxx;
		instruction_memory[4]=16'b010011001xxxxxxx;
		instruction_memory[5]=16'b010011001xxxxxxx;
		instruction_memory[6]=16'b010011001xxxxxxx;
		instruction_memory[7]=16'b010011001xxxxxxx;
		instruction_memory[8]=16'b010011001xxxxxxx;
		instruction_memory[9]=16'b010011001xxxxxxx;
		instruction_memory[10]=16'b010011001xxxxxxx;
		instruction_memory[11]=16'b010011001xxxxxxx;
		instruction_memory[12]=16'b010011001xxxxxxx;
		/*instruction_memory[1]=16'b000011001xxxxxxx;
		instruction_memory[2]=16'b000011001xxxxxxx;
		instruction_memory[3]=16'b000011001xxxxxxx;
		instruction_memory[4]=16'b000011001xxxxxxx;
		instruction_memory[5]=16'b000011001xxxxxxx;
		instruction_memory[6]=16'b000011001xxxxxxx;
		instruction_memory[7]=16'b000011001xxxxxxx;
		instruction_memory[8]=16'b000011001xxxxxxx;
		instruction_memory[9]=16'b000011001xxxxxxx;
		instruction_memory[10]=16'b000011001xxxxxxx;
		instruction_memory[11]=16'b000011001xxxxxxx;
		instruction_memory[12]=16'b000011001xxxxxxx;
		instruction_memory[13]=16'b000011001xxxxxxx;
		instruction_memory[14]=16'b000011001xxxxxxx;
		instruction_memory[15]=16'b000011001xxxxxxx;
		instruction_memory[16]=16'b000011001xxxxxxx;
		instruction_memory[17]=16'b000011001xxxxxxx;
		instruction_memory[18]=16'b000011001xxxxxxx;
		instruction_memory[19]=16'b000011001xxxxxxx;
		instruction_memory[20]=16'b000011001xxxxxxx;
		instruction_memory[21]=16'b000011001xxxxxxx;
		instruction_memory[22]=16'b000011001xxxxxxx;
		instruction_memory[23]=16'b000011001xxxxxxx;
		instruction_memory[24]=16'b000011001xxxxxxx;
		instruction_memory[25]=16'b010011001xxxxxxx;
		instruction_memory[26]=16'b010011001xxxxxxx;
		//instruction_memory[0]=16'b010011001xxxxxxx;
		//instruction_memory[1]=16'b011011001xxxxxxx;*/
	end	
	
	assign instruction = instruction_memory[address];
	
	
endmodule 
