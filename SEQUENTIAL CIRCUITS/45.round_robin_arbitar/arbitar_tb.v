`timescale 1ns / 1ps
module roundrobin_arbiter_tb();
  reg clk;
  reg rst_n;
  reg [3:0] REQ;
  wire [3:0] GNT;
 arbiter DUT(.clk(clk), .rst(rst_n), .REQ(REQ), .GNT(GNT));
  always #5 clk = ~clk;
  initial begin
	$dumpfile("arbitar.vcd");
	$dumpvars;
    clk = 0;
    rst_n = 1;
    REQ = 4'b0;
    #5 rst_n = 1;
    @(negedge clk) REQ = 4'b1000;    
    @(negedge clk) REQ = 4'b1010;
    @(negedge clk) REQ = 4'b0010;
    @(negedge clk) REQ = 4'b0110;
    @(negedge clk) REQ = 4'b1111;
    @(negedge clk) REQ = 4'b0100;
    @(negedge clk) REQ = 4'b0010;
    #5 rst_n = 0;
    #100 $finish;
  end
  endmodule 
