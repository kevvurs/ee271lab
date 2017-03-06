module safeHex (clk, reset, enable, ctrl, hex);
	input logic clk, reset, enable;
	input logic [1:0] ctrl;
	output logic [6:0] hex;
	logic [6:0] pattern;
	logic [6:0] symbol;
	logic [6:0] ps, ns;
	parameter flash = 7'b1111111, zero = 7'b1000000;

	numHex unit (.in(ctrl), .out(symbol));
	
	always_comb
		if (enable) ns = symbol;
		else ns = ps;
		
	
	assign hex = ns;
	
	always_ff @(posedge clk)
		if (reset)
			ps <= zero;
		else
			ps <= ns;
endmodule

module safeHex_testbench();
	logic clk, reset, enable;
	logic [1:0] ctrl;
	logic [6:0] hex;
	
	safeHex dut (.clk, .reset, .enable, .ctrl, .hex);
	
	parameter CLOCK_PERIOD=100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end

	initial begin
		reset <= 0;	enable <= 0;	ctrl <= 2'b00;	@(posedge clk);
		reset <= 0;	enable <= 0;	ctrl <= 2'b00;	@(posedge clk);
		reset <= 1;	enable <= 0;	ctrl <= 2'b00;	@(posedge clk);
		reset <= 0;	enable <= 0;	ctrl <= 2'b00;	@(posedge clk);
		reset <= 0;	enable <= 0;	ctrl <= 2'b11;	@(posedge clk);
		reset <= 0;	enable <= 0;	ctrl <= 2'b00;	@(posedge clk);
		reset <= 0;	enable <= 1;	ctrl <= 2'b00;	@(posedge clk);
		reset <= 0;	enable <= 1;	ctrl <= 2'b10;	@(posedge clk);
		reset <= 0;	enable <= 1;	ctrl <= 2'b01;	@(posedge clk);
		reset <= 0;	enable <= 1;	ctrl <= 2'b00;	@(posedge clk);
		reset <= 1;	enable <= 0;	ctrl <= 2'b10;	@(posedge clk);
		reset <= 0;	enable <= 0;	ctrl <= 2'b00;	@(posedge clk);
		reset <= 0;	enable <= 0;	ctrl <= 2'b00;	@(posedge clk);
		$stop;
	end
endmodule
