module decadecounter_tb;
wire [3:0] count;
reg en,clock;
  
decade_counter dut(.en(en), .clock(clock), .count(count));
initial begin
$display($time, " << Starting the Simulation >>");
    en=0;
    clock=0;
   #20en=1'd1;
end
  
  always
    #5 clock=~clock; 
  
  initial
    $monitor ( $time , "clock= %b, count= %d, en= %b",    clock,count, en);
   initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars(1);
      #500$finish;
    end
  
endmodule
