module lsfr #(parameter WIDTH=10, x1=7, x2=5, x3=4, x4=3) (clk, in, reset, out, q);
	input logic clk, in, reset;
	output logic out;
	output logic [WIDTH-1:0] q = 8'b01011010;
	logic v;
	integer i;
	
	always_comb
		case (in)
			0: v = 0;
			1: v = 1;
			default: v = 0;
		endcase
	
	always_ff @(posedge clk) begin
		if (reset) begin	
			q[0] <= v;
			for (i = 0; i < WIDTH-1; i++) begin
				q[i+1] <= q[i];
			end
		end
	end	
	
	assign out = q[x1] ^~ q[x2] ^~ q[x3] ^~ q[x4];
endmodule

module lsfr_testbench();
	parameter w=8;
	logic clk, in, out, reset;
	logic [w-1:0] q;
	
	lsfr #(.WIDTH(w)) dut (.clk, .in, .reset, .out, .q);
	assign in = out;
	
	parameter CLOCK_PERIOD=100;
	initial begin
		clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	integer i;
	parameter k = 4;
	initial begin
		for (i = 0; i < k; i++) begin
			reset <= 0;	@(posedge clk); assert (q != 8'b11111111);
		end
		for (i = 0; i < 2; i++) begin
			reset <= 1;	@(posedge clk); assert (q != 8'b11111111);
		end
		for (i = 0; i < k; i++) begin
			reset <= 0;	@(posedge clk); assert (q != 8'b11111111);
		end
		$stop;
	end
endmodule
