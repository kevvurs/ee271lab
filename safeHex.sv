module safeHex (clk, reset, enable, ctrl, hex, interx);
	input logic clk, reset, enable, interx;
	input logic [1:0] ctrl;
	output logic [6:0] hex;
	logic [6:0] pattern;
	logic [6:0] symbol;
	logic [6:0] ps, ns;
	logic cy;
	parameter flash = 7'b1111111, zero = 7'b1000000;

	numHex unit (.in(ctrl), .out(symbol));
	stutter16 #(.WIDTH(12), .HIGH(12'b111111111111), .LOW(12'b000000000000), .STEP(12'b000000000001)) st (.clk(clk), .reset(reset), .cy(cy));
	
	always_comb begin
		ns = ps;
		if (enable) begin
			if (cy) begin
				if (ps == symbol) ns = flash;
				else ns = symbol;
			end
		end
		if (interx & ps == flash) begin
			ns = symbol;
		end
	end
		
		
	
	assign hex = ns;
	
	always_ff @(posedge clk)
		if (reset)
			ps <= zero;
		else
			ps <= ns;
endmodule

module safeHex_testbench();
	logic clk, reset, enable, interx;
	logic [1:0] ctrl;
	logic [6:0] hex;
	integer i;
	
	safeHex dut (.clk, .reset, .enable, .ctrl, .hex, .interx);
	
	parameter CLOCK_PERIOD=100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end

	initial begin
		reset <= 1;	enable <= 1;	ctrl <= 2'b00;	interx <= 0;	@(posedge clk);
		reset <= 0;	
		for (i = 0; i < 7; i++) begin
			@(posedge clk); // hold
		end
		ctrl <= 2'b10; 
		for (i = 0; i < 6; i++) begin
			@(posedge clk); // Change num
		end
		interx <= 1; @(posedge clk); // Interrupt flicker
		@(posedge clk);
		@(posedge clk);
		interx <= 0; @(posedge clk);
		// reset <= 0;	enable <= 0;	ctrl <= 2'b00;	interx <= 0;	@(posedge clk);
		$stop;
	end
endmodule
