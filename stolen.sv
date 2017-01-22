// Detect if this UPC code indicates a discounted item.
module stolen(OUT, M, U, P, C);
	output logic OUT;
	input logic M, U, P, C;
	
	assign OUT = ((U & ~(P | M)) | ~(M | U | C));
endmodule

module stolen_testbench();
	logic out;
	logic [3:0] MUPC;

	stolen dut (.OUT(out), .M(MUPC[3]), .U(MUPC[2]), .P(MUPC[1]), .C(MUPC[0]));
	
	// Try all combinations of inputs.
	integer i;
	initial begin
		for(i = 0; i < 16; i++) begin
			MUPC[3:0] = i; #10;
		end
	end
endmodule
