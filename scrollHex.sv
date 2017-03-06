module scrollHex (clk, reset, inLeft, inRight, out);
	input logic clk, reset, inLeft, inRight;
	output logic [1:0] out;
	enum {A, B, C, D} ps, ns;
	
	
	always_comb
		if (inRight ^~ inLeft) begin
			ns = ps;
			case(ps)
				A: out = 2'b00;
				B: out = 2'b01;
				C: out = 2'b10;
				D: out = 2'b11;
			endcase
		end
		else begin
			if (inRight) begin
				case (ps)
					A: begin
						ns = B;
						out = 2'b01;
					end
					B: begin
						ns = C;
						out = 2'b10;
					end
					C: begin
						ns = D;
						out = 2'b11;
					end
					D: begin
						ns = D;
						out = 2'b11;
					end
				endcase
			end
			else begin
				case (ps)
					A: begin
						ns = A;
						out = 2'b00;
					end
					B: begin
						ns = A;
						out = 2'b00;
					end
					C: begin
						ns = B;
						out = 2'b01;
					end
					D: begin
						ns = C;
						out = 2'b10;
					end
				endcase
			end
		end
		
	always_ff @(posedge clk)
		if (reset)
			ps <= A;
		else
			ps <= ns;
endmodule

module scrollHex_testbench();
	logic clk, reset, inLeft, inRight;
	logic [1:0] out;
	
	scrollHex dut (.clk, .reset, .inLeft, .inRight, .out);
	
	parameter CLOCK_PERIOD=100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	initial begin
		reset <= 1;	inLeft <= 0;	inRight <= 0;	@(posedge clk);
		reset <= 0;											@(posedge clk);
																@(posedge clk);
											inRight <= 1;	@(posedge clk);
											inRight <= 0;	@(posedge clk);
											inRight <= 1;	@(posedge clk);
											inRight <= 0; 	@(posedge clk);
											inRight <= 1;	@(posedge clk);
						inLeft <= 1;						@(posedge clk);
											inRight <= 0;	@(posedge clk);
						inLeft <= 0;						@(posedge clk);
						inLeft <= 1;						@(posedge clk);
						inLeft <= 0;						@(posedge clk);
						inLeft <= 1;						@(posedge clk);
						inLeft <= 0;						@(posedge clk);
																@(posedge clk);
		reset <= 1;											@(posedge clk);
		reset <= 0;											@(posedge clk);
																@(posedge clk);
																@(posedge clk);
		$stop;
	end
endmodule
