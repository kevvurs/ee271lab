// SW1 and SW2 are four bit codes. If SW2 matches the second digit
// and SW1 matches the first digit of the decimal, BIAS number, -> TRUE.
// BIAS: 29
module digit_scan(OUT, SW1, SW2);
	output logic OUT;
	input logic [3:0] SW1;
	input logic [3:0] SW2;
	logic NINE, TWO;
	
	// Numbers should be twenty and nine.
	assign NINE = (~(SW1[1] | SW1[2])) & ( SW1[3] & SW1[0]);
	assign TWO = (~(SW2[0] | SW2[2] | SW2[3])) & SW2[1];
	
	assign OUT = TWO & NINE;
endmodule

module digit_scan_testbench();
	logic out;
	logic [9:0] SW;

	digit_scan dut (.OUT(out), .SW1(SW[3:0]), .SW2(SW[7:4]));
	
	// Try all combinations of inputs.
	integer i;
	initial begin
		SW[9] = 1'b0;
		SW[8] = 1'b0;
		for(i = 0; i <256; i++) begin
			SW[7:0] = i; #10;
		end
	end
endmodule
