module subtractor_tb;
reg [7:0] a, b; 
wire [7:0] result; 

subtractor dut(a,b,result);
initial begin
	$dumpfile("waveform.vcd");
	$dumpvars;
end
initial
begin
#0 a = 8'b0000_0011; b = 8'b0000_0001; 
#10 a = 8'b0000_0100; b = 8'b0000_0011; 
#10 a = 8'b0000_0110; b = 8'b0000_0011;
#10 a = 8'b0100_1100; b = 8'b0001_0101; 
#10 a = 8'b1000_0001; b = 8'b1000_0001; 
#10 a = 8'b0110_0001; b = 8'b0010_0001;
#10 a = 8'b1111_1000; b = 8'b0000_0010;
end
initial 
begin
//display variables
$monitor ("a = %d, b = %d, rslt = %d", a, b, result);
#200 $finish;
end
endmodule
