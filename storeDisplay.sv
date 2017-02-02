module storeDisplay(DU0, DU1, DU2, DU3, DU4, DU5, UPC);
	input logic [2:0] UPC;
	output logic [6:0] DU0, DU1, DU2, DU3, DU4, DU5;
	
	always_comb
		case(UPC)
			3'b000: // COFFEE
				begin
					DU0 = 7'b1000110;
					DU1 = 7'b1000000;
					DU2 = 7'b0001110;
					DU3 = 7'b0001110;
					DU4 = 7'b0000110;
					DU5 = 7'b0000110;
				end
			3'b001: // HUbCAP
				begin
					DU0 = 7'b0001001;
					DU1 = 7'b1000001;
					DU2 = 7'b0000011;
					DU3 = 7'b1000110;
					DU4 = 7'b0001000;
					DU5 = 7'b0001100;
				end
			3'b011: // CANdLE
				begin
					DU0 = 7'b1000110;
					DU1 = 7'b0001000;
					DU2 = 7'b1001000;
					DU3 = 7'b0100001;
					DU4 = 7'b1000111;
					DU5 = 7'b0000110;
				end
			3'b100: // POP Cd
				begin
					DU0 = 7'b0001100;
					DU1 = 7'b1000000;
					DU2 = 7'b0001100;
					DU3 = 7'b1111111;
					DU4 = 7'b1000110;
					DU5 = 7'b0100001;
				end
			3'b101: // PHONE
				begin
					DU0 = 7'b0001100;
					DU1 = 7'b0001001;
					DU2 = 7'b1000000;
					DU3 = 7'b1001000;
					DU4 = 7'b0000110;
					DU5 = 7'b1111111;
				end
			3'b110: // bEdPAN
				begin
					DU0 = 7'b0000011;
					DU1 = 7'b0000110;
					DU2 = 7'b0100001;
					DU3 = 7'b0001100;
					DU4 = 7'b0001000;
					DU5 = 7'b1001000;
				end
			default: // Handle unused UPC codes
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

module storeDisplay_testbench();
	logic [6:0] hex0, hex1, hex2, hex3, hex4, hex5;
	logic [3:0] Mupc;
	logic isStolen, isDiscounted;

	// Correlate the register with the stolen and discounted triggers.
	storeDisplay dutDisplay (.DU5(hex0), .DU4(hex1), .DU3(hex2), .DU2(hex3), .DU1(hex4), .DU0(hex5), .UPC(Mupc[2:0]));
	register dutRegister (.STL(isStolen), .DISC(isDiscounted), .M(Mupc[3]), .U(Mupc[2]), .P(Mupc[1]), .C(Mupc[0]));
	
	// Try all 3-bit UPC combos.
	integer i;
	initial begin
		for(i = 0; i < 16; i++) begin
			Mupc = i; #10;
		end
	end
endmodule
