module universal(dout, clk, rst, MODE, din);
  output reg [3:0] dout;
  input clk, rst;
  input [1:0] MODE;
  input [3:0] din;
  
  always @(posedge clk)
  begin
    if(rst)
      dout <= 0;
    else
      begin
        case(MODE)
          2'b00 : dout <= dout;      
	  2'b01 : dout <= {din[0], din[3:1]}; 
          2'b10 : dout <= {din[2:0], din[3]}; 
          2'b11 : dout <= din;      
        endcase
      end
  end
  
endmodule
