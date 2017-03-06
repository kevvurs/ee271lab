module evalSafe (a, b, c, m);
	input logic [7:0] a, b;
	output logic [3:0] c, m;
	
	always_comb begin
		m[0] = 0;
		c[0] = 0;
		m[1] = 0;
		c[1] = 0;
		m[2] = 0;
		c[2] = 0;
		m[3] = 0;
		c[3] = 0;
		
		if (a[1:0] == b[1:0]) c[0] = 1;
		if (a[3:2] == b[3:2]) c[1] = 1;
		if (a[5:4] == b[5:4]) c[2] = 1;
		if (a[7:6] == b[7:6]) c[3] = 1;
		
		if (c[0] == 0) begin
			if (a[1:0] == b[3:2] && c[1] == 0) m[0] = 1;
			else if (a[1:0] == b[5:4] && c[2] == 0) m[0] = 1;
			else if (a[1:0] == b[7:6] && c[3] == 0) m[0] = 1;
		end
		
		if (c[1] == 0) begin
			if (a[3:2] == b[1:0] && c[0] == 0) m[1] = 1;
			else if (a[3:2] == b[5:4] && c[2] == 0) m[1] = 1;
			else if (a[3:2] == b[7:6] && c[3] == 0) m[1] = 1;
		end
		
		if (c[2] == 0) begin
			if (a[5:4] == b[1:0] && c[0] == 0) m[2] = 1;
			else if (a[5:4] == b[3:2] && c[1] == 0) m[2] = 1;
			else if (a[5:4] == b[7:6] && c[3] == 0) m[2] = 1;
		end
		
		if (c[3] == 0) begin
			if (a[7:6] == b[1:0] && c[0] == 0) m[3] = 1;
			else if (a[7:6] == b[3:2] && c[1] == 0) m[3] = 1;
			else if (a[7:6] == b[5:4] && c[2] == 0) m[3] = 1;
		end
	end
			

endmodule

module evalSafe_testbench();
	logic [7:0] a, b;
	logic [3:0] c, m;
	
	evalSafe dut (.a, .b, .c, .m);
	
	integer i;
	initial begin
		b[7:0] = 8'b00000100; // code:0010
		for(i = 0; i < 255; i++) begin
			a[7:0] = i; #10; // guess
		end
	end
endmodule
