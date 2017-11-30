module state_Machine(clk_debounce, Buttons);
	input clk_debounce;
	input [1:0]Buttons;
	

	reg start_button_state;
	reg stop_button_state;
	
	reg Current_State;
	
	
	always@(clk_debounce)begin
		if(Buttons[0] == 0) begin
		start_button_state = 0;
		end
		else if(Buttons[1] == 1)begin
		start_button_state = 1;
		end
	end
	
	
	
	
	
	
	
	
endmodule
