module encoder42_tb;
    reg [3:0]din;
    wire [1:0]dout;
    encoder42 en(.din(din),.dout(dout));
     
initial begin
$dumpfile("enco.vcd");
$dumpvars; 
din = 0;

#100;
#100; din=1; 
#100; din=2; 
#100; din=4; 
#100; din=8;
end
endmodule
