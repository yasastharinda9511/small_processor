module reg_a(a_bus,b_bus,c_bus,write_en,clk);
	input clk;
	input write_en;
	input [15:0] c_bus;
	output[15:0] a_bus,b_bus;
	reg [15:0] memory=1;
	
	always @(posedge clk)
		begin
			if(write_en)
				memory=c_bus;
				$display("reg_a memory= %1d",memory);
		end
		
	assign a_bus=memory;
	assign b_bus=memory;
endmodule
