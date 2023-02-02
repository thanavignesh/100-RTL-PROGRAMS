module d_ff_tb;
  reg d,clk=0,reset;
  wire q;
d_ff t1(.d(d),.q(q),.clk(clk),.res(reset));
initial
  begin
	$dumpfile("waveform.vcd");
	$dumpvars;
   
    reset=1;
    d=0;
    #5 reset=0;
    $monitor($time,"\tclk=%b\t,reset=%b\t.q=%b",clk,reset,d,q);
    #160$finish;
  end
  always#5 clk=~clk;
  always#40 d=~d;
endmodule
