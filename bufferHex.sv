module bufferHex #(parameter WIDTH=5) (clk, reset, in, ex, buffer);
	input logic clk, reset, ex;
	input logic [4:0] in;
	output logic [WIDTH-1:0][6:0] buffer;
	logic [6:0] symbol;
	integer i, j;
	
	alphaHex decode (.in(in), .out(symbol));
	
	always_ff @(posedge clk)
		if (reset) begin
			for (j = 0; j < WIDTH; j++)
					buffer[j] <= 7'b1111111;
		end
		else begin
			if (ex) begin
				for (j = 0; j < WIDTH - 1; j++)
					buffer[j + 1] <= buffer[j];
				buffer[0] <= symbol;
			end
			else begin 
				for (j = 0; j < WIDTH; j++)
					buffer[j] <= buffer[j];
			end
		end
	
endmodule
