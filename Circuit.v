module circuit (A, B, Cin, S0, S1, OMUX);
	input [1:0]A;
	input [1:0]B;
	input Cin, S0, S1;
	output [3:0]OMUX;
	wire  [3:0]Omultiply;
 	wire [3:0]OAdd_Sub;
	wire [3:0]ONAND;
	wire [3:0] OA;
	Arithmetic_logic Arithmetic_logic1(A, B, Cin, Omultiply, OAdd_Sub);
	Logic_unit Logic_unit1(A, B, OA, ONAND);
	mux mux1 (S1, S0, OA, ONAND, OAdd_Sub, Omultiply, OMUX);
endmodule
	