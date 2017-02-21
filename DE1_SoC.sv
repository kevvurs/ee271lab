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
 
 // Generate clk off of CLOCK_50, whichClock picks rate.
 logic [31:0] clk;
 parameter whichClock = 15;
 clock_divider cdiv (CLOCK_50, clk);
 
 //Reset
 logic pre_reset, reset;
 
 always_ff @(posedge clk[whichClock])
			pre_reset <= SW[9];
 always_ff @(posedge clk[whichClock])
			reset <= pre_reset;
 
 // LSFR
 logic in, out;
 logic [9:0] q;
 lsfr #(.WIDTH(10)) cyber_input (.clk(clk[whichClock]), .in(in), .out(out), .q(q));
 assign in = out;
 
 // Comparator
 logic push;
 bitcompare #(.WIDTH(10)) comp (.a({1'b0,SW[8:0]}), .b(q), .out(push));
 
 // Game
 logic playerAction, toggle1, toggle2, w1, w2;
 logic [2:0] game;
 logic [3:0] leds1, leds2;
 tow_input p1 (.clk(clk[whichClock]), .reset(reset), .in(KEY[0]), .out(playerAction));
 tow_delegator del (.clk(clk[whichClock]), .reset(reset), .deviate1(toggle1), .deviate2(toggle2), .player1(playerAction), .player2(push), .out(game));
 tow_score sc1 (.clk(clk[whichClock]), .reset(reset), .idle(game[2:1]), .increment(game[0]), .vulnerable(toggle1), .pattern(leds1), .win(w1));
 tow_score sc2 (.clk(clk[whichClock]), .reset(reset), .idle(~game[2:1]), .increment(game[0]), .vulnerable(toggle2), .pattern(leds2), .win(w2));
 
 //
endmodule

// divided_clocks[0] = 25MHz, [1] = 12.5Mhz, ... [23] = 3Hz, [24] = 1.5Hz,[25] = 0.75Hz
module clock_divider (clock, divided_clocks);
 input logic clock;
 output logic [31:0] divided_clocks;

 initial
 divided_clocks <= 0;

 always_ff @(posedge clock)
 divided_clocks <= divided_clocks + 1;
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
