module DE1_SoC #(parameter whichClock=8) (CLOCK_50, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, KEY, LEDR,
SW);
 input logic CLOCK_50; // 50MHz clock.
 output logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
 output logic [9:0] LEDR;
 input logic [3:0] KEY;
 input logic [9:0] SW;
 
 logic [31:0] clk;
 clock_divider cdiv (CLOCK_50, clk);
 
 //Reset
 logic pre_reset, reset;
 always_ff @(posedge clk[whichClock])
			pre_reset <= SW[9];
 always_ff @(posedge clk[whichClock])
			reset <= pre_reset;

 logic feedIn, feedOut;
 logic [7:0] safeCode;
 lsfr #(.WIDTH(8)) dut (.clk(clk[whichClock]), .in(feedIn), .reset(reset), .out(feedOut), .q(safeCode));
 assign feedIn = feedOut;
 
 logic goLeft, goRight, submit, lose;
 keyHandle LeftScroll (.clk(clk[whichClock]), .reset(reset), .in(KEY[2]), .out(goLeft));
 keyHandle RightScroll (.clk(clk[whichClock]), .reset(reset), .in(KEY[1]), .out(goRight));
 keyHandle subKey (.clk(clk[whichClock]), .reset(reset), .in(KEY[3]), .out(submit));

 logic [1:0][3:0] attempts; 
 always_ff @(posedge clk[whichClock])
	if (reset) begin
		lose <= 0;
		attempts[0] <= 4'b0000;
		attempts[1] <= 4'b0000;
	end
	else begin
		if (submit) begin
			if (attempts[0] == 4'b1001) begin
				if (attempts[1] == 4'b1001) lose <= 1;
				else begin
					attempts[1] <= attempts[1] + 4'b0001;
					attempts[0] <= 4'b0000;
				end
			end
			else attempts[0] <= (attempts[0] + 4'b0001);
		end
	end
 
 logic [1:0] sel;
 scrollHex scrl (.clk(clk[whichClock]), .reset(reset), .inLeft(goLeft), .inRight(goRight), .out(sel));
 
 logic [3:0] enables;
 decoder2_4 dec (.in(sel), .out(enables));
 
 logic [3:0][6:0] displayBus;
 genvar i;
 generate
	for(i = 0; i < 4; i++) begin : eachHex
		safeHex displayUnit (.clk(clk[whichClock]), .reset(reset), .enable(enables[i]), .ctrl(SW[1:0]), .hex(displayBus[i]), .interx(goRight | goLeft | submit));
	end
 endgenerate
 
 logic [3:0][1:0] guessNums;
 logic [7:0] guess;
 genvar j;
 generate
	for(j = 0; j < 4; j++) begin : eachVal
		segEncoder7_4 encoderUnit (.hex(displayBus[j]), .val(guessNums[j]));
	end
 endgenerate
 assign guess = {guessNums[0], guessNums[1], guessNums[2], guessNums[3]};
 
 logic [3:0] cflag, mflag, cc, mc, totalCorrect, totalMisplaced;
 evalSafe checkr (.a(guess), .b(safeCode), .c(cflag), .m(mflag));
 evalEncoder countCorrect (.data(cflag), .count(cc));
 evalEncoder countMisp (.data(mflag), .count(mc));
 
 
 always_ff @(posedge clk[whichClock]) begin
		if (reset) begin
			totalCorrect <= 4'b0000;
			totalMisplaced <= 4'b0000;
		end
		if (submit) begin
			totalCorrect <= cc;
			totalMisplaced <= mc;
		end
	end
 
 logic [28:0][6:0] display;
 safeMarquee hexd (.clk(clk[whichClock]), .reset(reset), .display(display), .tries(attempts), 
 .safeDigits(displayBus), .nCorrect(totalCorrect), .nMisplaced(totalMisplaced), .lose(lose));
 
 assign HEX0 = display[7];
 assign HEX1 = display[8];
 assign HEX2 = display[9];
 assign HEX3 = display[10];
 assign HEX4 = display[11];
 assign HEX5 = display[12];
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
 
 DE1_SoC #(.whichClock(0)) dut (.CLOCK_50, .HEX0, .HEX1, .HEX2, .HEX3, .HEX4, .HEX5, .KEY, .LEDR, .SW);
 
 parameter CLOCK_PERIOD=100;
	initial begin
		CLOCK_50 <= 0;
		forever #(CLOCK_PERIOD/2) CLOCK_50 <= ~CLOCK_50;
	end
 
 integer i;
 initial begin
	SW[9:0] <= 10'b0000000000; KEY <= 4'b1111; LEDR[9:0] <= 10'b0000000000;
	SW[9] <= 1; SW[0] <= 0; SW[1] <= 0; 
	@(posedge CLOCK_50); @(posedge CLOCK_50); @(posedge CLOCK_50); // entropy
	@(posedge CLOCK_50); SW[9] <= 0;
	for (i = 0; i < 16; i++) begin
		@(posedge CLOCK_50); // Idle
 	end
	SW[0] <= 0; SW[1] <= 1; @(posedge CLOCK_50);
	@(posedge CLOCK_50);
	@(posedge CLOCK_50);
	@(posedge CLOCK_50);
	@(posedge CLOCK_50);
	KEY[1] <= 1; @(posedge CLOCK_50); KEY[1] <= 0;
	@(posedge CLOCK_50);
	@(posedge CLOCK_50);
	@(posedge CLOCK_50);
	@(posedge CLOCK_50);
	SW[0] <= 1; @(posedge CLOCK_50);
	@(posedge CLOCK_50);
	@(posedge CLOCK_50);
	@(posedge CLOCK_50);
	@(posedge CLOCK_50);
	$stop;
	end
endmodule
