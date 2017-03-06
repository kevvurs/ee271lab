module evalSafe (a, b, out);
	input logic [1:0] a;
	input logic [7:0] b;
	output logic out;
	
	always_comb
		if (a == b[1:0]) out = 0;
		else if (a == b[3:2]) out = 1;
		else if (a == b[5:4]) out = 1;
		else if (a == b[7:6]) out = 1;
		else out = 0;

endmodule
