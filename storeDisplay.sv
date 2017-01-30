module storeDisplay(DU0, DU1, DU2, DU3, DU4, DU5, UPC);
	input logic [2:0] UPC;
	output logic [6:0] DU0, DU1, DU2, DU3, DU4, DU5;
	
	always_comb
		case(UPC)
			3'b000: 
				begin
					DU0 = 7'b0000000;
					DU1 = 7'b0000000;
					DU2 = 7'b0000000;
					DU3 = 7'b0000000;
					DU4 = 7'b0000000;
					DU5 = 7'b0000000;
				end
			3'b001:
				begin
					DU0 = 7'b0000000;
					DU1 = 7'b0000000;
					DU2 = 7'b0000000;
					DU3 = 7'b0000000;
					DU4 = 7'b0000000;
					DU5 = 7'b0000000;
				end
			3'b011:
				begin
					DU0 = 7'b0000000;
					DU1 = 7'b0000000;
					DU2 = 7'b0000000;
					DU3 = 7'b0000000;
					DU4 = 7'b0000000;
					DU5 = 7'b0000000;
				end
			3'b100:
				begin
					DU0 = 7'b0000000;
					DU1 = 7'b0000000;
					DU2 = 7'b0000000;
					DU3 = 7'b0000000;
					DU4 = 7'b0000000;
					DU5 = 7'b0000000;
				end
			3'b101:
				begin
					DU0 = 7'b0000000;
					DU1 = 7'b0000000;
					DU2 = 7'b0000000;
					DU3 = 7'b0000000;
					DU4 = 7'b0000000;
					DU5 = 7'b0000000;
				end
			3'b110:	
				begin
					DU0 = 7'b0000000;
					DU1 = 7'b0000000;
					DU2 = 7'b0000000;
					DU3 = 7'b0000000;
					DU4 = 7'b0000000;
					DU5 = 7'b0000000;
				end
			default: 
				begin
					DU0 = 7'bX;
					DU1 = 7'bX;
					DU2 = 7'bX;
					DU3 = 7'bX;
					DU4 = 7'bX;
					DU5 = 7'bX;
				end
		endcase
endmodule
