module full_sub(a,b,bin,diff,bo);
input a,b,bin;
output diff,bo;
assign diff=a^b^bin;
assign bo=~a&b|b&bin|bin&a;
endmodule
