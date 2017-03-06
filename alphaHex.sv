module alphaHex (in, out);
	input logic [4:0] in;
	output logic [6:0] out;
	logic [6:0] pattern;
	
	always_comb
		case (in)
			5'b00000: pattern = 7'b0001000; // A
			5'b00001: pattern = 7'b0000011; // b
			5'b00010: pattern = 7'b1000110; // C
			5'b00011: pattern = 7'b0100001; // d
			5'b00100: pattern = 7'b0000110; // E
			5'b00101: pattern = 7'b0001110; // F
			5'b00110: pattern = 7'b0010000; // g
			5'b00111: pattern = 7'b0001011; // h
			5'b01000: pattern = 7'b1110000; // I
			5'b01001: pattern = 7'b1110001; // J
			5'b01010: pattern = 7'b0001111; // k?
			default: pattern = 7'bX;
		endcase
		
	assign out = pattern;
endmodule
