module lsfr #(parameter WIDTH=10, x1=6, x2=9) (clk, in, out, q);
	input logic clk, in;
	output logic out;
	output logic [WIDTH-1:0] q = 0;
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
	parameter w=10;
	logic clk, in, out;
	logic [w-1:0] q;
	
	lsfr #(.WIDTH(w)) dut (.clk, .in, .out, .q);
	assign in = out;
	
	parameter CLOCK_PERIOD=100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	integer i;
	parameter k = 1024;
	initial begin
		for (i = 0; i < k; i++) begin
			@(posedge clk); assert (q != 10'b1111111111);
		end
		$stop;
	end
endmodule
