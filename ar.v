/*module ar(en,address,address_in,clk);
	input en,clk;
	output reg [15:0] word;
	input [15:0] instruction;
	input [15:0] address;
	
	always@(*) begin
		if(en) word=instruction;
	end
endmodule */