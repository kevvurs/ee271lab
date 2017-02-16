module DE1_SoC (CLOCK_50, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, KEY, LEDR,
SW);
 input logic CLOCK_50; // 50MHz clock.
 output logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
 output logic [9:0] LEDR;
 input logic [3:0] KEY; // True when not pressed, False when pressed
 input logic [9:0] SW;

 assign HEX1 = 7'b1111111;
 assign HEX2 = 7'b1111111;
 assign HEX3 = 7'b1111111;
 assign HEX4 = 7'b1111111;
 assign HEX5 = 7'b1111111;
 
 // 
 logic reset, dev1, dev2;
 logic play1, play2, vic1, vic2;
 logic [2:0] action;
 logic [3:0] leds1, leds2;
 logic [6:0] victor;
 
 // Input
 tow_input ui_reset (.clk(CLOCK_50), .reset(1'b0), .in(~SW[9]), .out(reset));
 tow_input ui1 (.clk(CLOCK_50), .reset(reset), .in(KEY[0]), .out(play1));
 tow_input ui2 (.clk(CLOCK_50), .reset(reset), .in(KEY[3]), .out(play2));
 
 // Game logic
 tow_delegator del (.clk(CLOCK_50), .reset(reset), .deviate1(dev1), .deviate2(dev2), .player1(play1), .player2(play2), .out(action));
 tow_score p1 (.clk(CLOCK_50), .reset(reset), .idle(action[2:1]), .increment(action[0]), .vulnerable(dev1), .pattern(leds1), .win(vic1));
 tow_score p2 (.clk(CLOCK_50), .reset(reset), .idle(~action[2:1]), .increment(action[0]), .vulnerable(dev2), .pattern(leds2), .win(vic2));
 
 assign LEDR[5] = 1;
 assign LEDR[4:1] = leds1;
 assign LEDR[6] = leds2[3];
 assign LEDR[7] = leds2[2];
 assign LEDR[8] = leds2[1];
 assign LEDR[9] = leds2[0];
 
 always_comb
	if (vic1) victor = 7'b1111001;
	else if (vic2) victor = 7'b0100100;
	else victor = 7'b1111111;

	assign HEX0 = victor;

endmodule

module DE1_SoC_testbench();
 logic CLOCK_50;
 logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
 logic [9:0] LEDR;
 logic [3:0] KEY;
 logic [9:0] SW;
 
 DE1_SoC dut (.CLOCK_50, .HEX0, .HEX1, .HEX2, .HEX3, .HEX4, .HEX5, .KEY, .LEDR, .SW);
 
 parameter CLOCK_PERIOD=100;
	initial begin
		CLOCK_50 <= 0;
		forever #(CLOCK_PERIOD/2) CLOCK_50 <= ~CLOCK_50;
	end
 initial begin
 SW[9] <= 0; KEY[3] <= 0; 	KEY[0] <= 0;	@(posedge CLOCK_50);
				 KEY[3] <= 1;						@(posedge CLOCK_50);
									KEY[0] <= 1;	@(posedge CLOCK_50);
									KEY[0] <= 0;	@(posedge CLOCK_50);
														@(posedge CLOCK_50);
									KEY[0] <= 1;	@(posedge CLOCK_50);
									KEY[0] <= 0;	@(posedge CLOCK_50);
									KEY[0] <= 1;	@(posedge CLOCK_50);
									KEY[0] <= 0;	@(posedge CLOCK_50);
									KEY[0] <= 1;	@(posedge CLOCK_50);
									KEY[0] <= 0;	@(posedge CLOCK_50);
									KEY[0] <= 1;	@(posedge CLOCK_50);
									KEY[0] <= 0;	@(posedge CLOCK_50);
									KEY[0] <= 1;	@(posedge CLOCK_50);
														@(posedge CLOCK_50);
														@(posedge CLOCK_50);
														@(posedge CLOCK_50);
 SW[9] <= 1;										@(posedge CLOCK_50);	
 SW[9] <= 0;KEY[3] <= 0;						@(posedge CLOCK_50);
				KEY[3] <= 1;						@(posedge CLOCK_50);
				KEY[3] <= 0;						@(posedge CLOCK_50);
				KEY[3] <= 1;						@(posedge CLOCK_50);
				KEY[3] <= 0;						@(posedge CLOCK_50);
				KEY[3] <= 1;						@(posedge CLOCK_50);
				KEY[3] <= 0;						@(posedge CLOCK_50);
				KEY[3] <= 1;						@(posedge CLOCK_50);
				KEY[3] <= 0;						@(posedge CLOCK_50);
				KEY[3] <= 1;						@(posedge CLOCK_50);
														@(posedge CLOCK_50);
														@(posedge CLOCK_50);
														@(posedge CLOCK_50);
														@(posedge CLOCK_50);
														@(posedge CLOCK_50);
		$stop; // End the simulation.
	end
endmodule
