module nandtestbench;
	reg [0:1]A; 
	reg [0:1]B;
	wire [0:1]O;
	NAND1 nand1 (A, B, O);
	initial 
		begin
		A = 2'b00; B = 2'b00;	
		#100
		A = 2'b00; B = 2'b01;
		#100
		A = 2'b01; B = 2'b00;
		#100
		A = 2'b01; B = 2'b01;
		#100 $finish;
		end
endmodule