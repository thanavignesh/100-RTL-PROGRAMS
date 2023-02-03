

module par_gen_tb;
	reg x;
	reg y;
	reg z;
	wire result;
	par_gen uut (
		.x(x), 
		.y(y), 
		.z(z), 
		.result(result)
	);

	initial begin
		$dumpfile("waveform.vcd");
		$dumpvars;
x = 0;

y = 0;

z = 0;
#100;
x = 0;

y = 0;

z = 1;
#100;

x = 0;

y = 1;

z = 0;
#100;

x = 0;

y = 1;

z = 1;

end
endmodule

