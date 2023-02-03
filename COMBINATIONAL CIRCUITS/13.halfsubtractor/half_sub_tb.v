module half_sub_tb();
reg a,b;
wire diff,bo;
half_sub uut(a,b,diff,bo);
initial begin
	$dumpfile("waveform.vcd");
	$dumpvars;
a=0;b=0;#100
a=0;b=1;#100
a=1;b=0;#100
a=1;b=1;
end
endmodule
