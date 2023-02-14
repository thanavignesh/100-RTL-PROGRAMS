`timescale 1ns / 1ps
module fix(output reg [3:0] GNT,
           input [3:0] REQ,
           input clk,reset 
);
always @(posedge clk or negedge reset)
    begin
    if(!reset)
    GNT<= 4'b0000;
    else if(REQ[3])
     GNT<= 4'b1000;
    else if(REQ[1])
     GNT<= 4'b0010;
    else if(REQ[0])
     GNT<= 4'b0001;
    else if(REQ[2])
     GNT<= 4'b0100;
     else 
     GNT<= 4'b0000;
    end
    
endmodule
