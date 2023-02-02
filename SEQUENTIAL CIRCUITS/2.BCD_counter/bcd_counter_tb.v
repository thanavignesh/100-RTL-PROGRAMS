module bcd_counter_tb;
  reg clk,res,en;
  wire [3:0]out;
bcd_counter t1(.clk(clk),.res(res),.en(en),.out(out));
initial 
begin
  $dumpfile("waveform.vcd");
  $dumpvars;
  clk=0;
  res=1;
  en=0;
  #5 en=1;
  #5 res=0;
  #100 $finish;
end
always #5 clk=!clk;
initial
begin
$monitor($time,"clk=%b\t,en=%b\t,res=%b\t,out=%b\t",clk,en,res,out);
end
endmodule
