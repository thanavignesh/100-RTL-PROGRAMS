module ripple_tb;
  reg clk,reset;
  wire [3:0]out;
  ripple ri(.clk(clk),.rst(rst),.out(out));
  always#1 clk=~clk;
  initial begin
    clk<=0;
    reset<=0;
    #10 reset=1;
    #20 reset=0;
    #10 reset=1;
    $dumpfile("waveform.vcd");
    $dumpvars;
     #30$finish;
  end
endmodule
