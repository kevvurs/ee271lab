module bitcompare #(parameter WIDTH=10) (a, b, out);
	input logic [WIDTH-1:0] a, b;
	output logic out;
	logic [WIDTH-1:0] c;
	logic borrow = 0;
	integer i;
	
	always_comb
		for (i = 1; i < WIDTH; i++) begin
			c[i] = (a[i] ^~^ b[i]) ^~^ borrow;
			borrow = ((~a[i] & (borrow | b[i])) | (borrow & b[i]));
		end

	assign c = (a - b);
	assign out = c > 0;
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
		end
endmodule
