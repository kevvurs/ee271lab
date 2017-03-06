module decoder2_4 (in, out);
	input logic [1:0] in;
	output logic [3:0] out;
	
	always_comb
		case (in)
			2'b00: out = 4'b0001;
			2'b01: out = 4'b0010;
			2'b10: out = 4'b0100;
			2'b11: out = 4'b1000;
			default: out = 4'bX;
		endcase		
endmodule

module decoder2_4_testbench();
	logic [1:0] in;
	logic [3:0] out;
	
	decoder2_4 dut (.in, .out);
	
	integer i;
	initial begin
		for(i = 0; i < 4; i++) begin
			in = i; #10;
		end
	end
endmodule
