module ir(en,word,instruction,clk);
	input en,clk;
	output reg [15:0] word;
	input [15:0] instruction;
	
	always@(*) begin
		if(en) word=instruction;
	end
endmodule 