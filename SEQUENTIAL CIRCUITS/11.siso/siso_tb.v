module siso_reg_tb;
reg clk,clear,si;
wire so;
siso_reg uut (.clk(clk), .clear(clear),.si(si),.so(so));
initial begin
$dumpfile("waveform.vcd");
$dumpvars;
end
initial begin
#1 clk =1'b0;
#5 clear=1'b0;
#10 si=1'b1;
#10 si=1'b0;
#10 si=1'b0;
#10 si=1'b1;
#10 si=1'b0;
#10 si=1'b1;
end

always #5 clk = ~clk;

initial #150 $finish;

endmodule
