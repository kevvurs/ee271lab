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
 
 // Generate clk off of CLOCK_50, whichClock picks rate.
 logic [31:0] clk;
 parameter whichClock = 15;
 clock_divider cdiv (CLOCK_50, clk);
 
 logic in, out;
 
 lsfr cyber_input (.clk(clk[whichClock]), .in(in), .out(out));
 assign in = out;
 
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
