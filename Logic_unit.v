module Logic_unit(A, B, OA, ONand);
	input [1:0] A;
	input [1:0] B;
	output [3:0] OA;
	output [3:0] ONand;
	assign OA[3] = 0;
	assign OA[2] = 0;
	assign OA[1] = A[1];
	assign OA[0] = A[0];
	NAND1 NAND1_1(A, B, ONand);
endmodule