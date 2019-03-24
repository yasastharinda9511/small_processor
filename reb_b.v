module reg_b(a_bus,b_bus,c_bus,write_en,clk);
	input clk;
	input write_en;//0 bit:a_bus 1 bit:b_bus 2 bit:c_bus
	input [15:0] c_bus;
	output [15:0] a_bus,b_bus;
	reg [15:0] memory=2;
	
	always @(posedge clk)
		begin
			if(write_en)
				memory=c_bus;
				$display("reg_b memory= %1d",memory);
		end
		
	assign a_bus=memory;
	assign b_bus=memory;
endmodule