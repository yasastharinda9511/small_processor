module  b_bus_demux(selec,b_bus_out,reg1_b_in,reg2_b_in,reg3_b_in);
	input [1:0] selec;
	input [15:0]reg1_b_in,reg2_b_in,reg3_b_in;
	output reg [15:0]b_bus_out;
	always@(*) begin
		if(selec==2'b01) b_bus_out=reg1_b_in;
		else if(selec==2'b10) b_bus_out=reg2_b_in;
		else if(selec==2'b11) b_bus_out=reg3_b_in;
	end
	
endmodule 