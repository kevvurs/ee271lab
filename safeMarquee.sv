module safeMarquee (clk, reset, display, tries, safeDigits, nCorrect, nMisplaced, lose);
	input logic clk, reset, lose;
	input logic [3:0] nCorrect, nMisplaced;
	input logic [1:0][3:0] tries;
	input logic [3:0][6:0] safeDigits;
	output logic [28:0][6:0] display;
	logic [6:0] mis, cor, t1, t2;
	logic cy;
	parameter space = 7'b1111111;
	integer i, j;
	
	stutter16 st (.clk, .reset, .cy);
	seg7 h1 (.bcd(nMisplaced), .leds(mis));
	seg7 h2 (.bcd(nCorrect), .leds(cor));
	seg7 h3 (.bcd(tries[0]), .leds(t1));
	seg7 h4 (.bcd(tries[1]), .leds(t2));	
	
	always_ff @(posedge clk)
		if (reset) begin
			display[0] <= 7'b0100001; // d
			display[1] <= 7'b0000110; // E
			display[2] <= 7'b1111011; // i
			display[3] <= 7'b1001000; // n
			display[4] <= 7'b0000110; // E
			display[5] <= 7'b0100001; // d
			display[6] <= space;
			display[7] <= safeDigits[3];
			display[8] <= safeDigits[2];
			display[9] <= safeDigits[1];
			display[10] <= safeDigits[0];
			display[11] <= mis;
			display[12] <= cor;
			display[13] <= space;
			display[14] <= 7'b0000011; // b
			display[15] <= 7'b1000000; // O
			display[16] <= 7'b1110001; // j
			display[17] <= space;
			display[18] <= 7'b0100001; // d
			display[19] <= 7'b1000000; // O
			display[20] <= 7'b1000000; // O
			display[21] <= 7'b0010000; // g
			display[22] <= space;
			display[23] <= t1;
			display[24] <= t2;
			display[25] <= space;
			display[26] <= 7'b0010001; // y
			display[27] <= 7'b0101111; // r
			display[28] <= 7'b0000111; // t
			j <= 0;
		end
		else begin
			if (nCorrect == 4'b0100) begin
				if (cy) begin
					if (j < 16) begin
						for (i = 0; i < 28; i++) begin
							display[i] <= display[i+1];
						end
						j++;
					end
				end
			end
			else if (lose) begin
				if (cy) begin
					if (j < 7) begin
						for (i = 28; i > 0; i--) begin
							display[i] <= display[i-1];
						end
						j++;
					end
				end
			end
			else begin
				display[7] <= safeDigits[3];
				display[8] <= safeDigits[2];
				display[9] <= safeDigits[1];
				display[10] <= safeDigits[0];
				display[11] <= mis;
				display[12] <= cor;
				display[23] <= t1;
				display[24] <= t2;
			end
		end
endmodule
