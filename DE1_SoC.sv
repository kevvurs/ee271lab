// Top-level module that defines the I/Os for the DE-1 SoC board
module DE1_SoC (HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, KEY, LEDR, SW);
	output logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
	output logic [9:0] LEDR;
	input logic [3:0] KEY;
	input logic [9:0] SW;
	
	// Assignment 1:
	// Turns off unused the HEX displays
	/*
	assign HEX2 = 7'b1111111;
	assign HEX3 = 7'b1111111;
	assign HEX4 = 7'b1111111;
	assign HEX5 = 7'b1111111;
	
	digitDisplay r (.DISP0(HEX0), .CTRL0(SW[3:0]), .DISP1(HEX1), .CTRL1(SW[7:4]));
	*/
	
	// Assignment 2:
	storeDisplay disp (.DU5(HEX0), .DU4(HEX1), .DU3(HEX2), .DU2(HEX3), .DU1(HEX4), .DU0(HEX5), .UPC(SW[9:7]));
	register regs (.STL(LEDR[0]), .DISC(LEDR[9]), .M(SW[0]), .U(SW[9]), .P(SW[8]), .C(SW[7]));
endmodule

// Testbench for testing both assignments
module DE1_SoC_dual_testbench();
	logic [6:0] hex0, hex1, hex2, hex3, hex4, hex5;
	logic [3:0] mupc;
	logic stolen, discounted, mark;
	
	logic [6:0] display0, display1;
	logic [7:0] vals;

	storeDisplay dut0 (.DU5(hex0), .DU4(hex1), .DU3(hex2), .DU2(hex3), .DU1(hex4), .DU0(hex5), .UPC(mupc[2:0]));
	register dut1 (.STL(stolen), .DISC(discounted), .M(mupc[3]), .U(mupc[2]), .P(mupc[1]), .C(mupc[0]));
	digitDisplay dut2 (.DISP0(display0), .DISP1(display1), .CTRL0(vals[3:0]), .CTRL1(vals[7:4]));
	
	integer i;
	initial begin
		for(i = 0; i < 256; i++) begin
			vals = i; #10;
		end
	end
	
	integer j;
	initial begin
		for(j = 0; j < 16; j++) begin
			mupc = j; #10;
		end
	end
	
endmodule
