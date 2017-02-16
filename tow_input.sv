// Tug of War: Handle user input.
module tow_input (clk, reset, in, out);
	input logic clk, reset, in;
	output logic out;
	enum { activated, deactivated } ns, ps;
	logic in_transient, in_validated, signal;
	
	// Metastability filter
	always_ff @(posedge clk)
			in_transient <= in;
	always_ff @(posedge clk)
			in_validated <= in_transient;

	always_comb
		case(ps)
			deactivated: begin
				signal = 0;
				if (in_validated) ns = activated;
				else ns = ps;
			end
			activated: begin
				if (~in_validated) begin
					signal = ~in_validated;
					ns = deactivated;
				end
				else begin
					signal = 0;
					ns = ps;
				end
			end
		endcase
	
	assign out = signal;
	
	always_ff @(posedge clk)
		if (reset)
			ps <= activated;
		else
			ps <= ns;
endmodule

module tow_input_testbench();
	logic clk, reset, in;
	logic out;

	tow_input dut (clk, reset, in, out);

	parameter CLOCK_PERIOD=100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end

	initial begin
			in <= 1;	reset <= 0;	@(posedge clk);
						in <= 0;		@(posedge clk);
										@(posedge clk);
										@(posedge clk);
										@(posedge clk);
										@(posedge clk);
										@(posedge clk);
										@(posedge clk);
						in <= 1;	   @(posedge clk);
										@(posedge clk);
										@(posedge clk);
										@(posedge clk);
										@(posedge clk);
						in <= 0;		@(posedge clk);
						in <= 1;		@(posedge clk);
										@(posedge clk);
										@(posedge clk);
						in <= 1;		@(posedge clk);
						in <= 0;		@(posedge clk);
						in <=	1;		@(posedge clk);
		reset <= 1;					@(posedge clk);
										@(posedge clk);
										@(posedge clk);
										@(posedge clk);
										@(posedge clk);
		$stop; // End the simulation.
	end
endmodule
