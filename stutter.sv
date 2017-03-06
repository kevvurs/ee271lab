module stutter16 (clk, reset, cy);
	input logic clk, reset;
	output logic cy;
	logic [15:0] ns, ps;
	
	always_comb
		if (ps == 16'b1111111111111111) begin
			cy = 1;
			ns = 16'b0000000000000000;
		end
		else begin
			cy = 0;
			ns = (ps + 16'b000000000001);
		end
		
	always_ff @(posedge clk)
		if (reset)
			ps <= 16'b0000000000000000;
		else
			ps <= ns;
endmodule

module stutter_testbench();
	logic clk, reset;
	logic cy;
	
	stutter dut (.clk, .reset, .cy);
	
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
