module airport (clk, w, out);
	input logic clk;
	input logic [1:0] w;
	output logic [2:0] out;
	enum { ALPHA, BETA, CHI, DELTA } ps, ns;
	logic [1:0] w1, w2;
	logic [2:0] pattern;
	parameter alphaPattern = 3'b101, betaPattern = 3'b010, chiPattern = 3'b001, deltaPattern = 3'b100, unkownPattern = 3'bX;
	parameter calm = 2'b00, rtl = 2'b01, ltr = 2'b10;
	
	// M.S. Filter
	always_ff @(posedge clk)
		w1 <= w;
	always_ff @(posedge clk)
		w2 <= w1;
	
	// Next State logic
	 always_comb
		case (ps)
			ALPHA:
				if (w2 == calm)
					begin
						ns = BETA;
						pattern = betaPattern;
					end
				else if (w2 == rtl)
					begin
						ns = CHI;
						pattern = chiPattern;
					end
				else if (w2 == ltr)
					begin
						ns = DELTA;
						pattern = deltaPattern;
					end
				else 
					begin
						ns = ps;
						pattern = unkownPattern;
					end
			BETA:
				if (w2 == calm)
					begin
						ns = ALPHA;
						pattern = alphaPattern;
					end
				else if (w2 == rtl)
					begin
						ns = DELTA;
						pattern = deltaPattern;
					end
				else if (w2 == ltr)
					begin
						ns = CHI;
						pattern = chiPattern;
					end
				else 
					begin
						ns = ps;
						pattern = unkownPattern;
					end
			CHI:
				if (w2 == calm)
					begin
						ns = ALPHA;
						pattern = alphaPattern;
					end
				else if (w2 == rtl)
					begin
						ns = BETA;
						pattern = betaPattern;
					end
				else if (w2 == ltr)
					begin
						ns = DELTA;
						pattern = deltaPattern;
					end
				else 
					begin
						ns = ps;
						pattern = unkownPattern;
					end
			DELTA: 
				if (w2 == calm)
					begin
						ns = ALPHA;
						pattern = alphaPattern;
					end
				else if (w2 == rtl)
					begin
						ns = CHI;
						pattern = chiPattern;
					end
				else if (w2 == ltr)
					begin
						ns = BETA;
						pattern = betaPattern;
					end
				else 
					begin
						ns = ps;
						pattern = unkownPattern;
					end
		endcase
				
		assign out = pattern;

	 // DFFs
	 always_ff @(posedge clk)
			ps <= ns;
endmodule

module airport_testbench();
	logic clk;
	logic [1:0] w;
	logic out;

	airport dut (clk, w, out);

	parameter CLOCK_PERIOD=100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end

	initial begin
										@(posedge clk);
										@(posedge clk);
						w <= 2'b00;	@(posedge clk);
										@(posedge clk);
										@(posedge clk);
										@(posedge clk);
										@(posedge clk);
										@(posedge clk);
						w <= 2'b01; @(posedge clk);
										@(posedge clk);
										@(posedge clk);
										@(posedge clk);
										@(posedge clk);
										@(posedge clk);
						w <= 2'b10;	@(posedge clk);
										@(posedge clk);
										@(posedge clk);
										@(posedge clk);
										@(posedge clk);
										@(posedge clk);
										@(posedge clk);
										@(posedge clk);
										@(posedge clk);
		$stop; // End the simulation.
	end
endmodule
