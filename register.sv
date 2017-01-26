module register(STL, DISC, M, U, P, C);
	output logic STL, DISC;
	input logic M, U, P, C;
	
	assign DISC = (P | (U & C));
	assign STL = ((U & ~(P | M)) | ~(M | U | C));
endmodule

module register_testbench();
	logic isStolen, isDiscounted;
	logic m, u, p, c;

	register dut (.STL(isStolen), .DISC(isDiscounted), .M(m), .U(u), .P(p), .C(c));
	
	initial begin
		m=0; u=0; p=0; c=0; #10;
		m=0; u=0; p=0; c=1; #10;
		m=0; u=0; p=1; c=0; #10;
		m=0; u=0; p=1; c=1; #10;
		m=0; u=1; p=0; c=0; #10;
		m=0; u=1; p=0; c=1; #10;
		m=0; u=1; p=1; c=0; #10;
		m=0; u=1; p=1; c=1; #10;
		m=1; u=0; p=0; c=0; #10;
		m=1; u=0; p=0; c=1; #10;
		m=1; u=0; p=1; c=0; #10;
		m=1; u=0; p=1; c=1; #10;
		m=1; u=1; p=0; c=0; #10;
		m=1; u=1; p=0; c=1; #10;
		m=1; u=1; p=1; c=0; #10;
		m=1; u=1; p=1; c=1; #10;
	end
endmodule
