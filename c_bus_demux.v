module  c_bus_demux(selec,reg1_c_en,reg2_c_en,reg3_c_en);
	input [1:0] selec;
	output reg1_c_en,reg2_c_en,reg3_c_en;
	
	assign reg1_c_en=(selec==2'b01) ? 1'b1: 1'b0;
	assign reg2_c_en=(selec==2'b10) ? 1'b1: 1'b0;
	assign reg3_c_en=(selec==2'b11) ? 1'b1: 1'b0;
	
	
endmodule 