module bcd_7segment_tb;


	reg [3:0] Binary_Num;
	integer i;
	wire [6:0] Segment;

bcd_7Segment uut (
		.Binary_Num(Binary_Num), 
		.Segment(Segment));
	initial begin
		$dumpfile("waveform.vcd");
		$dumpvars;
		end
		initial
		begin
		for(i=0;i<10;i=i+1)
		begin
		Binary_Num=i;
		#10;
		end
		end
		initial
		begin
		$monitor("Binary Num=%b | ABCDEFG=%b",Binary_Num,Segment);
	   #400 $finish;
		end


      
endmodule
