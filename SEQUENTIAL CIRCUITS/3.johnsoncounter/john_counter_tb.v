module john_counter_tb();
parameter WIDTH=4;
reg clk,reset;
wire [WIDTH-1:0] count;
john_counter dut(clk,reset,count);
always #10 clk=~clk;
initial
begin
	$dumpfile("waveform.vcd");
	$dumpvars;
reset=0;
clk=0;
 $monitor ("T=%0t out=%b", $time, count);
 #50 reset=1;
 #200 $finish;
 end
 endmodule
