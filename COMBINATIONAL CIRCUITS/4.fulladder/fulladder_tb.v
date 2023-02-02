`include"fulladder.v"
module fulladder_tb;
  reg a,b,c;
  wire s,cout;
  integer i;
fulladder t1(.a(a),.b(b),.cin(c),.cout(cout),.s(s));
initial
begin
	$dumpfile("waveform.vcd");
	$dumpvars;
  {a,b,c}<=3'b000;
  for (i=1;i<25;i=i+1)
  begin
    $monitor($time,"\ta=%b\t,b=%b\t.c=%b\t,s=%b\t,cout=%b\t",a,b,c,s,cout);
    #5{a,b,c}<=$random%8;
  end
  #45 $finish;
end
endmodule
