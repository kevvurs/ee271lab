module bitcompare #(parameter WIDTH=10) (a, b, out);
	input logic [WIDTH-1:0] a, b;
	output logic out;
	logic [WIDTH-1:0] c;
	logic greaterThan;
	
	always_comb begin
		c = (a - b);
		if (c == 0)
			greaterThan = 0;
		else if (c > a)
			greaterThan = 0;
		else
			greaterThan = 1;
	end
	
	assign out = greaterThan;
endmodule

module bitcompare_testbench();
	logic [9:0] a, b;
	logic out;
	
	bitcompare dut (.a, .b, .out);
	
	initial begin
		a=10'b0000000000; b=10'b0000000001; #10;
		a=10'b0000000010; b=10'b0000000101; #10;
		a=10'b0100000000; b=10'b0000101011; #10;
		a=10'b1000000000; b=10'b0010000001; #10;
		a=10'b0010000011; b=10'b0010000011; #10;
		a=10'b1111111111; b=10'b1111111111; #10;
		a=10'b0000000000; b=10'b0000000000; #10;
		a=10'b1010101010; b=10'b0101010101; #10;
		end
endmodule
