module mux_tb;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg [1:0] s;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.a(a), 
		.b(b), 
		.c(c),  
		.s(s), 
		.o(o)
	);

	initial begin
		$dumpfile("waveform.vcd");
		$dumpvars;
		a=0;b=0;c=0;s=2'b00;
		#10 a=1;b=0;c=0;s=2'b01;
		#10 a=1;b=1;c=0;s=2'b10;
		#10 a=1;b=0;c=0;s=2'b00;
		#10 a=0;b=0;c=1;s=2'b01;
		#10 a=1;b=0;c=0;s=2'b10;
		#10 a=0;b=1;c=0;s=2'b00;
	end
	initial
	begin
	$monitor("A=%b B=%b C=%b Sel=%b",a,b,c,s);
	#200 $finish;
	end
      
endmodule
