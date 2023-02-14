module siso_dff_tb();
reg clk;
reg sin;
wire sout;

siso_dff dut(.clk(clk), .sin(sin), .sout(sout));

initial
begin
$monitor("sin = %b, sout = %b",sin,sout);
end

initial
begin
	$dumpfile("siso.vcd");
	$dumpvars;
clk = 0;
sin =0;
#10 sin=1'b1;
#10 sin=1'b0;
#10 sin=1'b1;
end

always #5 clk = ~clk;

initial #100 $finish;

endmodule
