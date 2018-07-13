module gray(a,y);
  input [3:0] a;
  output [3:0] y;
  assign y[3]=a[3];
  xor g1 (y[2],a[3],a[2]);
  xor g2 (y[1],a[2],a[1]);
  xor g3 (y[0],a[1],a[0]);
