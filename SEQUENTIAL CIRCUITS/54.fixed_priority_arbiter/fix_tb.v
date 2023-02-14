`timescale 1ns / 1ps
module fix_tb(); 
wire [3:0] GNT;
reg [3:0] REQ;
reg clk,reset ;
fix dut(.GNT(GNT),.REQ(REQ),.clk(clk),.reset(reset));
initial
begin

$dumpfile("fix.vcd");
$dumpvars;
clk=0;
end
always #5 clk <= ~clk ;
initial 
begin
reset =0;
#5 reset =1;
repeat(20)
begin
#5  REQ<=$random;
end
#100 $finish();
end
initial begin
$monitor("REQ=%b,GNT=%b,reset=%b",REQ,GNT,reset);
end
endmodule
