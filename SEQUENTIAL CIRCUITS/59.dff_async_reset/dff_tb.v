module d_ff_async_reset_tb;
  reg clk, reset;
  reg d;
  wire q;

  initial begin
    clk = 0;
    reset = 1;
    d = 0;
    #10 reset = 0;
    #10 reset = 1;
    #10 d = 1;
    #10 $finish;
  end

  always #5 clk = ~clk;

  d_ff_async_reset dff_inst (
    .clk(clk),
    .reset(reset),
    .d(d),
    .q(q)
  );

  initial begin
    $dumpfile("dff_async_reset.vcd");
    $dumpvars;
  end
endmodule
