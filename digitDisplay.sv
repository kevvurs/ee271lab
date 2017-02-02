// Print 2 decimal digits that are equivalent to 4-bit input signals.
module digitDisplay(DISP0, DISP1, CTRL0, CTRL1);
	input logic [3:0] CTRL0, CTRL1;
	output logic [6:0] DISP0, DISP1;
	
	// Send the switch configs to the LED units.
	seg7 unit0 (.bcd(CTRL0), .leds(DISP0));
	seg7 unit1 (.bcd(CTRL1), .leds(DISP1));
endmodule

module digitDisplay_testbench();
	logic [6:0] display0, display1;
	logic [7:0] vals;

	digitDisplay dut (.DISP0(display0), .DISP1(display1), .CTRL0(vals[3:0]), .CTRL1(vals[7:4]));
	
	// Try decimal converting inputs within 0-9 for each 7 segment LED unit.
	integer i;
	initial begin
		for(i = 0; i < 10; i++) begin
			// Parallelize the display assigments.
			vals[7:4] = i;	vals[3:0] = i; #10;
		end
	end
endmodule
