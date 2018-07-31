module NAND1 (A, B, O);
		input [1:0] A;
		input [1:0] B;	
		output [3:0] O;
		assign O[2] = 0;
		assign O[3] = 0;
		nand first(O[0], A[0], B[0]);
		nand second(O[1], A[1], B[1]);
endmodule
		