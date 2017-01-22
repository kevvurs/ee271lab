// Top-level module that defines the I/Os for the DE-1 SoC board
module DE1_SoC (HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, KEY, LEDR, SW);
	output logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
	output logic [9:0] LEDR;
	input logic [3:0] KEY;
	input logic [9:0] SW;
	// Default values, turns off the HEX displays
	assign HEX0 = 7'b1111111;
	assign HEX1 = 7'b1111111;
	assign HEX2 = 7'b1111111;
	assign HEX3 = 7'b1111111;
	assign HEX4 = 7'b1111111;
	assign HEX5 = 7'b1111111;
	
	discounted ds (.OUT(LEDR[8]), .U(SW[9]), .P(SW[8]), .C(SW[7]));
	stolen sl (.OUT(LEDR[0]), .M(SW[0]), .U(SW[9]), .P(SW[8]), .C(SW[7]));
endmodule

// Boilerplate. Use digit_scan_testbench instead.
module DE1_SoC_testbench();
	logic isStolen, isDiscounted;
	logic [3:0] MUPC;

	discounted dut1 (.OUT(isDiscounted), .U(MUPC[2]), .P(MUPC[1]), .C(MUPC[0]));
	stolen dut2 (.OUT(isStolen), .M(MUPC[3]), .U(MUPC[2]), .P(MUPC[1]), .C(MUPC[0]));
	
	// Try all combinations of inputs.
	integer i;
	initial begin
		for(i = 0; i < 16; i++) begin
			MUPC[3:0] = i; #10;
		end
	end
endmodule
