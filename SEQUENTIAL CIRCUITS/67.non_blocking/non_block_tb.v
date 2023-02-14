module nonblock_assign_tb;

reg din;
reg clk=0;

wire a;
wire b;
wire c;

nonblock_assign uut(.din(din),
        .clk(clk),
        .a(a),
        .b(b),
        .c(c));
initial
begin
  $dumpfile("dump.vcd");
        $dumpvars;
       #2 din = 1'b1;
        clk = 1'b0;
end
always #10 din=~din;
always #2 clk = ~clk;
initial
#200 $finish;
endmodule
