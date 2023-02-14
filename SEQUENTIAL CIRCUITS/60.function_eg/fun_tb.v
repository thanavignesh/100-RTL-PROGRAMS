module fun_tb;

reg a;
reg b;
reg c;
reg d;
reg e;

wire f;

fun dut(.a(a),
		     .b(b),
	     	     .c(c),
	     	     .d(d),
		     .e(e),
		      .f(f));


	      initial
	      begin
		      $dumpfile("functionwave.vcd");
		      $dumpvars;
		      {a,b,c,d,e} = 5'b00000;
		      #2{a,b,c,d,e} = 5'b00001;
		      #2{a,b,c,d,e}  = 5'b00010;
		      #2{a,b,c,d,e} = 5'b00110;
	      end
      initial begin
	      $monitor("a=%b,b=%b,c=%b,d=%b,e=%b,f=%b",a,b,c,d,e,f);
	      #20 $finish;
      end
      endmodule
