module UPC_Test;

	wire [3: 0] t_r;
	wire t_c4;
	wire t_v;
	reg [3: 0]  t_a, t_b;
	reg t_s;
	
	UPC_Add_Sub_4 f(t_r, t_c4, t_v, t_a, t_b, t_s);
	
	initial begin
	
		t_a = 4'b0001; t_b = 4'b0001; t_s = 0;
		#100
		
		t_a = 4'b0001; t_b = 4'b1001; t_s = 0;
		#100
		
		t_a = 4'b1001; t_b = 4'b0011; t_s = 0;
		#100
		
		t_a = 4'b0001; t_b = 4'b0001; t_s = 1;
		#100
		
		t_a = 4'b0001; t_b = 4'b1001; t_s = 1;
		#100
		
		t_a = 4'b1001; t_b = 4'b0011; t_s = 1;
		#100;
		
	end
	
	initial
		$monitor("A = %4b B = %4b S = %b Result= %b%4b OverFelow= %b",t_a,t_b,t_s,t_c4,t_r,t_v);
		
endmodule