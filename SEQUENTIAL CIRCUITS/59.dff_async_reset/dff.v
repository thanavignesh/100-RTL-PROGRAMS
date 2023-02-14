module d_ff_async_reset(
  input wire clk,
  input wire reset,
  input wire d,
  output reg q
);
  always @(posedge clk or negedge reset) begin
    if (!reset) begin
      q <= 1'b0;
    end else begin
      q <= d;
    end
  end
endmodule
