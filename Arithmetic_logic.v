module Arithmetic_logic(A, B, Cin, Omultiply, OaddSub);
	input [1:0]A;
	input [1:0]B;
	input Cin;
	output [3:0]Omultiply;
	output [3:0]OaddSub;
	multiplier multiplier1(A, B, Omultiply);
	Add_Sub Add_Sub1(A, B, Cin, OaddSub);
endmodule