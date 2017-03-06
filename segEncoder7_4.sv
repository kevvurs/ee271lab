module segEncoder7_4 (hex, val);
	input logic [6:0] hex;
	output logic [1:0] val;
	
	always_comb
		case (hex)
			7'b1000000: val = 2'b00;
			7'b1111001: val = 2'b01;
			7'b0100100: val = 2'b10;
			7'b0110000: val = 2'b11;
			default:  val = 2'bX;
		endcase
endmodule

module segEncoder7_4_testbench();
	logic [6:0] hex;
	logic [1:0] val;
	
	segEncoder7_4 dut (.hex, .val);
	
	integer i;
	initial begin
		hex=7'b1000000; #10;
		hex=7'b1111001; #10;
		hex=7'b0100100; #10;
		hex=7'b0110000; #10;
		hex=7'b1111111; #10;
	end
endmodule
