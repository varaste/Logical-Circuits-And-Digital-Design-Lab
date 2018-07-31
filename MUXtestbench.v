module MUXtestbench;
	reg S1, S0;
	reg [3:0]A;
	reg [3:0]B;
	reg [3:0]C;
	reg [3:0]D;
	wire [3:0]Y;
	mux mux1 (S1, S0, A, B, C, D, Y);
	initial
		begin
		A = 4'b0000; B = 4'b1010; C = 4'b1111; D = 4'b1001; S1 = 0; S0 = 0;
		#100
		A = 4'b0000; B = 4'b1010; C = 4'b1111; D = 4'b1001; S1 = 0; S0 = 1;
		#100
		A = 4'b0000; B = 4'b1010; C = 4'b1111; D = 4'b1001; S1 = 1; S0 = 0;
		#100
		A = 4'b0000; B = 4'b1010; C = 4'b1111; D = 4'b1001; S1 = 1; S0 = 1;
		#100		$finish;
		end
endmodule