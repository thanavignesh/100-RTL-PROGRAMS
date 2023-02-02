`include"priority_encoder.v"
module priority_encoder_tb;
reg [7:0]i;
reg en;
wire [2:0]y;
priority_encoder dut(en,i,y);
initial
begin
$dumpfile("waveform.vcd");
$dumpvars;
	$monitor("en=%b i=%b y=%b",en,i,y);
en=1; i=128;#5
en=1; i=64;#5
en=1; i=32;#5
en=1; i=16;#5
en=1; i=8;#5
en=1; i=4;#5
en=1; i=2;#5
en=1; i=0;#5
en=0;i=8'bx;#5
$finish;
end
endmodule
