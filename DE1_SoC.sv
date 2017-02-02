// Top-level module that defines the I/Os for the DE-1 SoC board
module DE1_SoC (HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, KEY, LEDR, SW);
	output logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
	output logic [9:0] LEDR;
	input logic [3:0] KEY;
	input logic [9:0] SW;

	// Assignment 1:
	// Turn off unused the HEX displays
	assign HEX2 = 7'b1111111;
	assign HEX3 = 7'b1111111;
	assign HEX4 = 7'b1111111;
	assign HEX5 = 7'b1111111;
	
	// Display the decimal interpretations of the switch values.
	digitDisplay r (.DISP0(HEX0), .CTRL0(SW[3:0]), .DISP1(HEX1), .CTRL1(SW[7:4]));

	// Assignment 2: Implements the register logic for Fred.
	
	// Print item names on the LED display.
	// storeDisplay disp (.DU5(HEX0), .DU4(HEX1), .DU3(HEX2), .DU2(HEX3), .DU1(HEX4), .DU0(HEX5), .UPC(SW[9:7]));
	
	// Init the stole or discounted LEDR triggers.
	// register regs (.STL(LEDR[0]), .DISC(LEDR[9]), .M(SW[0]), .U(SW[9]), .P(SW[8]), .C(SW[7]));
endmodule
