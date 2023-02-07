module onehot (out,en,clk, rst);
output [7:0] out;
input en, clk, rst;
reg [7:0] out;  
always @ (posedge clk)
if (rst) begin
  out <= 8'b0000_0001 ;
end else if (en) begin
  out <= {out[6],out[5],out[4],out[3],
          out[2],out[1],out[0],out[7]};
       end
endmodule  
