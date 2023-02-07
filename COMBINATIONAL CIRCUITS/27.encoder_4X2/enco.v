module encoder42(din,dout);
    input [3:0]din;
    output [1:0]dout;
     reg [1:0]dout;
always @ (din)
case (din)
    1 : dout[0] = 0; 
    2 : dout[1] = 1; 
    4 : dout[2] = 2; 
    8 : dout[3] = 3; 
    default : dout = 2'b00;
endcase
endmodule
