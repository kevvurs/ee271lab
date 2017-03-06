module countTries (clk, reset, incr, attempt);
	input logic clk, reset, incr;
	output logic [7:0] attempt;

	always_ff @(posedge clk)
		if (reset)
			attempt <= 8'b00000000;
		else
			if (incr) attempt = (attempt + 8'b00000001);
endmodule
