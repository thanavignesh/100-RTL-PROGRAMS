module onehot_tb;
  wire [7:0]out;
  reg enable,clk,reset;
  onehot dut(.en(enable),.clk(clk),.rst(reset),.out(out));
  always#5 clk=~clk;
  initial begin
    clk=0;
    enable=0;
   #5 reset=1;
    $dumpfile("onehot.vcd");
    $dumpvars;
   #5 reset=0;
    end
always #5 enable= ~enable;
  initial begin
  $dumpfile("dump.vcd");
  $dumpvars;
  end
  initial begin 
 $monitor($time,"clk=%d \t out=%b",clk,out);
 #400 $finish;
 end
endmodule
