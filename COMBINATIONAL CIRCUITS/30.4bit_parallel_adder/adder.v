module fulladder(sum,cout,a,b,c);
  output sum,cout;
  input a,b,c;
  wire y1,y2,y3,y4;
  xor x1(y1,a,c);
  xor x2(sum,y1,c);
  and a1(y2,a,c);
  and a2(y3,b,c);
  or o1(cout,y2,y3,y4);
endmodule


module parallel_adder(s,c,cin,a,b);
  output [3:0]s;
  output [3:0]c;
  input cin;
  input [3:0]a,b;
  fulladder fa1(s[0],c[0],a[0],b[0],cin);
  fulladder fa2(s[1],c[1],a[1],b[1],c[0]);
  fulladder fa3(s[2],c[2],a[2],b[2],c[1]);
  fulladder fa4(s[3],c[3],a[3],b[3],c[2]);
endmodule
