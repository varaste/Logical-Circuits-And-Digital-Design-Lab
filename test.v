module test;
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]sum;
wire c;
code7 gp3(a,b,cin,sum,c);
initial
  begin
   #100
   a=4'b1001;b=4'b1010;cin=1'b0;
#100
   a=4'b1101;b=4'b1001;cin=1'b0;
#100
   a=4'b1111;b=4'b0110;cin=1'b1;
#100
   a=4'b1101;b=4'b0100;cin=1'b1;
 

#100  $finish;
  end
 endmodule
