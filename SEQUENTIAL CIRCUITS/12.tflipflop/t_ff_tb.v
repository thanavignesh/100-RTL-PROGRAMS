module  t_ff_tb;
  reg data, en, reset ;
  wire q;
  t_ff t0(data, en,  reset,  q);
  initial
    begin
      en=0;
      data = 0;
      #5 reset = 1;
      #30 reset = 0;
      $monitor($time, "\ten=%b\t ,reset=%b\t, data=%b\t, q=%b",en,reset,data,q);
      #160 $finish;
      end
  initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars(1);
      #100$finish;
    end
  always
    #25  en = ~en;
  always
    #5 data = ~data;
  
endmodule
