module evalEncoder (data, count);
	input logic [3:0] data;
	output logic [3:0] count;
	
	always_comb
		case (data)
			4'b0000: count = 4'b0000;
			4'b0001,4'b0010,
			4'b0100,4'b1000: count = 4'b0001;
			4'b0011,4'b0110,
			4'b0101,4'b1010,
			4'b1100,4'b1001: count = 4'b0010;
			4'b0111,4'b1110,
			4'b1101,4'b1011: count = 4'b0011;
			4'b1111: count = 4'b0100;
		endcase
endmodule
