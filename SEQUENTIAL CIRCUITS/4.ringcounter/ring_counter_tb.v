module ring_counter_tb;  
  parameter WIDTH = 4;  
    
  reg clk;  
  reg rstn;  
  wire [WIDTH-1:0] out;  
    
  ring_counter  u0 (.clk (clk),  
                .rstn (rstn),  
                .out (out));  
    
  always #10 clk = ~clk;  
    
  initial begin
	$dumpvars;
      $dumpfile("waveform.vd");	
    {clk, rstn} <= 0;  
  
    $monitor ("T=%0t out=%b", $time, out);  
    repeat (2) @(posedge clk);  
    rstn <= 1;  
    repeat (15) @(posedge clk);  
    $finish;  
  end  
endmodule  
