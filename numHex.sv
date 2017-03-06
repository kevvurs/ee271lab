module numHex (in, out);
	input logic [1:0] in;
	output logic [6:0] out;
	
	always_comb
		if (in == 2'b00) out = 7'b1000000;
		else if (in == 2'b01) out = 7'b1111001;
		else if (in == 2'b10) out = 7'b0100100;
		else if (in == 2'b11) out = 7'b0110000;
		else out = 7'bX;
		
endmodule

module numHex_testbench();
	logic [1:0] in;
	logic [6:0] out;
	
	numHex dut (.in, .out);
	
	integer i;
	initial begin
		for(i = 0; i < 4; i++) begin
			in = i; #10;
		end
	end
endmodule
