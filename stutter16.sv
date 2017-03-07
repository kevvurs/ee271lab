module stutter16 #(parameter WIDTH=16, HIGH=16'b1111111111111111, LOW=16'b0000000000000000, STEP=16'b0000000000000001) (clk, reset, cy);
	input logic clk, reset;
	output logic cy;
	logic [WIDTH-1:0] ns, ps;
	
	always_comb
		if (ps == HIGH) begin
			cy = 1;
			ns = LOW;
		end
		else begin
			cy = 0;
			ns = (ps + STEP);
		end
		
	always_ff @(posedge clk)
		if (reset)
			ps <= LOW;
		else
			ps <= ns;
endmodule

module stutter16_testbench();
	logic clk, reset;
	logic cy;
	
	stutter16 dut (.clk, .reset, .cy);
	
	parameter CLOCK_PERIOD=100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	integer i;
	initial begin
		reset <= 1; @(posedge clk); reset <= 0;
		for (i = 0; i < 200; i++) begin
			@(posedge clk); 
		end
		$stop;
	end
endmodule
