module tb;
	parameter MSB=4;
	reg din;
	reg clk;
	reg en;
	reg dir;
	reg rst;
	wire [MSB-1:0] out;
b DUT(.rst(rst),.din(din),.clk(clk),.en(en),.out(out));
	always #5 clk=~clk;
initial begin
	#1 clk<=0;
	#2 en<=0;
	#2 rst<=1;
	#3 en<=1;
	#3 rst<=0;
	#4 dir<=0;
	#4 din<=1;
end
 initial begin
	 #10 rst<=0;
	 #10 din<=0;
	 #10 en<=1;
	#10 dir<=1;
  repeat(5) @(posedge clk)
	 din<=~din;
	 #5;
	 din<=1;
	 dir<=0;
   repeat(5) @ (posedge clk);
#200 $finish;
end
initial begin
	$dumpfile("bidirection.vcd");
	$dumpvars;
end
initial
	$monitor("rst=%b , din=%b , clk=%d , en=%d , out=%b ", rst,din,clk,en,out);
endmodule


