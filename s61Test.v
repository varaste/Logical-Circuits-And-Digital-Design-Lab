`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:59:12 11/14/2017
// Design Name:   se61
// Module Name:   C:/Users/User/Desktop/s7/s61Test.v
// Project Name:  logic1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: se61
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module s61Test;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire f;
se61 s(a,b,c,f);
	// Instantiate the Unit Under Test (UUT)
	
	initial begin
		// Initialize Inputs
		a = 1;
		b = 1;
		c = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
a = 1;
		b = 0;
		c = 1;

	end
      
endmodule

