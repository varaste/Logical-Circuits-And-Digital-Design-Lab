module multiplier(A, B, O);
	input [1:0]A;
	input [1:0]B;
	output [3:0]O;
	wire [1:0]temp1;
	wire [2:0]temp2;
	wire carry;
	assign temp2[0] = 0;
	and and1 (temp1[0], B[0], A[0]),
		and2 (temp1[1], B[0], A[1]),
		and3 (temp2[1], B[1], A[0]),
		and4 (temp2[2], B[1], A[1]);
	
	xor a1 (O[0], temp1[0], temp2[0]);
	xor a2 (O[1], temp1[1], temp2[1]);
	and and1_1(carry, temp1[1], temp2[1]);
	xor and1_2(O[2], carry, temp2[2]);
	and and1_3(O[3], carry, temp2[2]);
	
endmodule

