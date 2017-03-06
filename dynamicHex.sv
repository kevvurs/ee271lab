module dynamicHex (clk, reset, in, out);
	input logic clk, reset;
	input logic [4:0] in;
	logic [6:0] symbol;
	output logic [6:0] out;
	logic [6:0] pattern;
	enum { blink, pop} ps, ns;
	parameter flash = 7'b1111111;

	alphaHex decode (.in(in), .out(symbol));

	always_comb
		if (ps == blink) begin
			pattern = flash;
			ns = pop;
		end
		else begin
			pattern = symbol;
			ns = blink;
		end
	
	assign out = pattern;
	
	always_ff @(posedge clk)
		if (reset)
			ps <= blink;
		else
			ps <= ns;
endmodule
