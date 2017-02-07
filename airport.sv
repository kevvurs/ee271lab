module airport (clk, reset, w, out);
	input logic clk, reset;
	input logic [1:0] w;
	output logic [2:0] out;
	// State variables.
	enum { CALM0, CALM1, RtL0, RtL1, RtL2, LtR0, LtR1, LtR2 } ps, ns;
	
	// Next State logic
	 always_comb
		case (w)
			2'b00: if (ps != CALM0) ns = CALM0;
			2'b01: if (ps != RtL0) ns = RtL0;
			2'b10: if (ps != LtR0) ns = LtR0;
		endcase

		case (ps)
			CALM0: ns = CALM1;
				assign out = 3'b101;
			CALM1: ns = CALM0;
				assign out = 3'b010;
		endcase
		
		// Output logic - could also be another always, or part of above block.
		assign out = (ps == C);

	 // DFFs
	 always_ff @(posedge clk)
		if (reset)
			ps <= A;
		else
			ps <= ns;

	
endmodule

module airport_testbench();

endmodule
