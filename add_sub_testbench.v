module Add_sub_testbench;
	reg [0:1]A; 
	reg [0:1]B; 
	reg Cin;
	wire [0:3]Sum;
	Add_Sub Add_sub1(A, B, Cin, Sum);
	initial 
		begin
		A = 2'b00; B = 2'b01; Cin = 0;
		#100
		A = 2'b11; B = 2'b01; Cin = 1;
		#100
		A = 2'b10; B = 2'b11; Cin = 0;
		#100
		A = 2'b01; B = 2'b11; Cin = 1;
		#100
		$finish;
		end
endmodule
			
	