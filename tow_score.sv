// Tug of War: Keep score.
module tow_score (clk, reset, idle, increment, vulnerable, pattern, win);
	input logic clk, reset, increment;
	input logic [1:0] idle;
	output logic vulnerable, win;
	output logic [3:0] pattern;
	enum { N, A, B, C, D, F } ps, ns;
	logic v, w;
	logic [3:0] signal;

	always_comb
		if (idle[0] | idle[1]) begin
			ns = ps; w = 0;
			case (ps)
				N: begin
						signal = 4'b0000;
						v = 1;
					end
				A: begin
						signal = 4'b1000;
						v = 1;
					end
				B: begin
						signal = 4'b0100;
						v = 0;
					end
				C: begin
						signal = 4'b0010;
						v = 0;
					end
				D: begin
						signal = 4'b0001;
						v = 0;
					end
				F: begin
						signal = 4'b0001;
						v = 0;
						w = 1;
						ns = N;
					end
			endcase
		end
		else begin v = 0; w = 0;
			case (ps)
				N: if (increment) begin
						signal = 4'b1000;
						ns = A;
						v = 1;
					end
					else begin
						signal = 4'b0000;
						ns = N;
						v = 1;
					end
				A: if (increment) begin
						signal = 4'b0100;
						ns = B;
					end
					else begin
						signal = 4'b0000;
						ns = N;
						v = 1;
					end
				B: if (increment) begin
						signal = 4'b0010;
						ns = C;
					end
					else begin
						signal = 4'b1000;
						ns = A;
					end
				C: if (increment) begin
						signal = 4'b0001;
						ns = D;
					end
					else begin
						signal = 4'b0100;
						ns = B;
					end
				D: if (increment) begin
						signal = 4'b0001;
						ns = F;
						w = 1;
					end
					else begin
						signal = 4'b0010;
						ns = C;
					end
				F: begin
						signal = 4'b0001;
						ns = ps;
						w = 1;
						ns = N;
					end
			endcase
		end
	assign win = w;
	assign vulnerable = v;
	assign pattern = signal;
	
	always_ff @(posedge clk)
		if (reset)
			ps <= N;
		else
			ps <= ns;
endmodule

module tow_score_testbench();
	logic clk, reset, increment, v, w, i;
	logic [3:0] LEDpattern;
	
	tow_score dut (.clk(clk), .idle(i), .reset(reset), .vulnerable(v), .win(w), .increment(increment), .pattern(LEDpattern)); 
	
	parameter CLOCK_PERIOD=100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end

	initial begin
	reset <= 0; increment <= 0; i <= 1; 	@(posedge clk);
					increment <= 1; 			  	@(posedge clk);
					increment <= 0; 				@(posedge clk);
					increment <= 0; i <= 0;		@(posedge clk);
					increment <= 0; 				@(posedge clk);
					increment <= 1; 				@(posedge clk);
					increment <= 0; 				@(posedge clk);
					increment <= 1; 				@(posedge clk);
														@(posedge clk);
														@(posedge clk);
														@(posedge clk);
														@(posedge clk);
														@(posedge clk);
	reset <= 1;	increment <= 1; i <= 1;		@(posedge clk);
					increment <= 1; 				@(posedge clk);
					increment <= 1; 				@(posedge clk);
					increment <= 1; 				@(posedge clk);
					increment <= 1; 				@(posedge clk);
		$stop; // End the simulation.
	end
	
endmodule
