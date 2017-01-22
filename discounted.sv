// Detect if this UPC code indicates a discounted item.
module discounted(OUT, U, P, C);
	output logic OUT;
	input logic U, P, C;
	
	// Numbers should be twenty and nine.
	assign OUT = (P | (U & C));
endmodule

module discounted_testbench();
	logic out;
	logic [2:0] UPC;

	discounted dut (.OUT(out), .U(UPC[2]), .P(UPC[1]), .C(UPC[0]));
	
	// Try all combinations of inputs.
	integer i;
	initial begin
		for(i = 0; i < 7; i++) begin
			UPC[2:0] = i; #10;
		end
	end
endmodule
