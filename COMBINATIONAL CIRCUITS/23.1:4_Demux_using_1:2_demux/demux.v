module demux_1_2(
  input s,
  input i,
  output y0, y1);
  
  assign {y0,y1} = s?{1'b0,i}: {i,1'b0};
endmodule

module demux_1_4(
  input s0, sel1,
  input  i,
  output  y0, y1, y2, y3);
  
  wire z1,z2;
  
  demux_1_2 d1(s0, i, z1, z2);
  demux_1_2 d2(s1, z1, y0, y1);
  demux_1_2 d3(s1, z2, y2, y3);
endmodule
