module multi_tester;
	reg [1:0] A;
	reg [1:0] B;
	wire [3:0]O;
	
	multiplier mp(A, B, O);
	initial
		begin
			A = 2'b10; B = 2'b11;
			#100 $finish;
		end
endmodule