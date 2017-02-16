// Tug of War: Handle user input and delgate procedures back to controller.
module tow_delegator (clk, reset, deviate1, deviate2, player1, player2, out);
	input logic clk, reset, player1, player2;
	input logic deviate1, deviate2;
	output logic [2:0] out;
	enum { center, leadRight, leadLeft } ns, ps;
	logic [2:0] signal;
	
	always_comb
		case(ps)
			center:
				if (player1 & player2) begin
					signal = 3'b100;
					ns = ps;
				end
				else if (player1) begin
					signal = 3'b001;
					ns = leadRight;
				end
				else if (player2) begin
					signal = 3'b111;
					ns = leadLeft;
				end
				else begin
					signal = 3'b100;
					ns = ps;
				end
			leadRight:
				if (player1 & player2) begin
					signal = 3'b100;
					ns = ps;
				end
				else if (player1) begin
					signal = 3'b001;
					ns = leadRight;
				end
				else if (player2) begin
					signal = 3'b000;
					if (deviate1) ns = center;
					else ns = leadRight;
				end
				else begin
					signal = 3'b100;
					ns = ps;
				end
			leadLeft:
				if (player1 & player2) begin
					signal = 3'b100;
					ns = ps;
				end
				else if (player1) begin
					signal = 3'b110;
					if (deviate2) ns = center;
					else ns = leadLeft;
				end
				else if (player2) begin
					signal = 3'b111;
					ns = leadLeft;
				end
				else begin
					signal = 3'b100;
					ns = ps;
				end
		endcase
	
	assign out = signal;
		
	always_ff @(posedge clk)
		if (reset)
			ps <= center;
		else
			ps <= ns;
endmodule

module tow_delegator_testbench();
	logic clk, reset, deviate1, deviate2, player1, player2;
	logic [2:0] out;
	
	tow_delegator dut (.clk, .reset, .deviate1, .deviate2, .player1, .player2, .out);

	parameter CLOCK_PERIOD=100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end

	initial begin
														deviate1 <= 0; deviate2 <= 0;	@(posedge clk);
	reset <= 1;																				@(posedge clk);
	reset <= 0; player1 <= 1; player2 <=0; 									   @(posedge clk);
																								@(posedge clk);
																								@(posedge clk);
				  player1 <= 0; player2 <=1; 									    	@(posedge clk);
													  deviate1 <= 1; 						@(posedge clk);
													  deviate1 <= 0; 						@(posedge clk);
									 player2 <=0;											@(posedge clk);
																								@(posedge clk);
	reset <= 1;																				@(posedge clk);
																								@(posedge clk);
																								@(posedge clk);																								
		$stop; // End the simulation.
	end
endmodule
