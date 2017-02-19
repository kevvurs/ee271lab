module lsfr #(parameter WIDTH=10, x1=6, x2=9) (clk, in, out);
	input logic clk, in;
	output logic out;
	logic [WIDTH-1:0] q = 0;
	logic v;
	integer i;
	
	always_comb
		case (in)
			0: v = 0;
			1: v = 1;
			default: v = 0;
		endcase
	
	always_ff @(posedge clk) begin
		q[0] <= v;
		for (i = 0; i < WIDTH-1; i++) begin
			q[i+1] <= q[i];
		end
	end	
	
	assign out = q[x1] ^~ q[x2];
endmodule

module lsfr_testbench();
	logic clk, in, out;
	
	lsfr dut (.clk, .in, .out);
	assign in = out;
	
	parameter CLOCK_PERIOD=100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	integer i;
	parameter k = 64;
	initial begin
		for (i = 0; i < k; i++) begin
			@(posedge clk);
		end
		$stop;
	end
endmodule
