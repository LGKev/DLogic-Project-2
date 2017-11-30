module clock_divider(clkin, clk_mili, clk_debounce, clk_seconds);
	input clkin;
	output reg clk_mili, clk_debounce, clk_seconds;
	
	reg count_mili;
	reg count_debounce;
	reg count_seconds;
	
	initial begin
	 count_mili = 0;
	 count_debounce = 0;
	 count_seconds =0;
	end
	
	
	//mili
	always @(posedge clkin) begin
		if(count_mili == 4999)begin
			count_mili <= 0; //reset counter
			clk_mili <= ~clk_mili;
		end
		
		if(count_debounce == 4999) begin
			count_debounce <=0;
			clk_debounce <= ~clk_debounce;
		end
		
		if(count_seconds == 50000000)begin
			count_seconds <=0;
			clk_seconds <= ~clk_seconds;
		end
		
		count_mili <= count_mili+1;
		count_debounce <= count_debounce+1;
		count_seconds <= count_seconds+1;
end

endmodule


