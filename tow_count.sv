module tow_count (clk, reset, in, display);
	input logic clk, reset, in;
	output logic [3:0] display;
	enum {zero, one, two, three, four, five, six, seven} ps, ns;
	logic [2:0] num;
	
	always_comb
		case (ps)
			zero: if (in) begin
					ns = one;
					num = 3'b001;
				end
				else begin
					ns = ps;
					num = 3'b000;
				end
			one: if (in) begin
					ns = two;
					num = 3'b010;
				end
				else begin
					ns = ps;
					num = 3'b001;
				end
			two: if (in) begin
					ns = three;
					num = 3'b011;
				end
				else begin
					ns = ps;
					num = 3'b010;
				end
			three: if (in) begin
					ns = four;
					num = 3'b100;
				end
				else begin
					ns = ps;
					num = 3'b011;
				end
			four: if (in) begin
					ns = five;
					num = 3'b101;
				end
				else begin
					ns = ps;
					num = 3'b100;
				end
			five: if (in) begin
					ns = six;
					num = 3'b110;
				end
				else begin
					ns = ps;
					num = 3'b101;
				end
			six: if (in) begin
					ns = seven;
					num = 3'b111;
				end
				else begin
					ns = ps;
					num = 3'b110;
				end
			default: begin
					ns = ps;
					num = 3'b111;
				end
		endcase
	assign display = {1'b0, num};
	
	always_ff @(posedge clk)
		if (reset)
			ps <= zero;
		else
			ps <= ns;
endmodule

module tow_count_testbench();
	logic clk, reset, in;
	logic [3:0] display;
	
	tow_count dut (.clk, .reset, .in, .display);
	
	parameter CLOCK_PERIOD=100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	integer i;
	initial begin
		for (i = 0; i < 8; i++) begin
			in <= 1; @(posedge clk); in <= 0;
		end
		$stop;
	end
endmodule
