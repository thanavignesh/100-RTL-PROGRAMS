module priority_encoder(en,i,y);
input en;
input [7:0]i;
output reg [2:0]y;
always @(en,i)
begin
if(en==1)
begin
// priority encoder
// if condition to chose
// output based on priority.
if(i[7]==1) y=3'b111;
else if(i[6]==1) y=3'b110;
else if(i[5]==1) y=3'b101;
else if(i[4]==1) y=3'b100;
else if(i[3]==1) y=3'b011;
else if(i[2]==1) y=3'b010;
else if(i[1]==1) y=3'b001;
else
y=3'b000;
end
// if enable is zero, there is
// an high impedance value.
else y=3'bzzz;
end
endmodule
