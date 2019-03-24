module pc(increment,address,clk);
 input increment,clk;
 output reg [15:0] address =1'd0;
 
 always@(posedge clk)
 begin
	if(increment)address=address+1;
 end 
endmodule
