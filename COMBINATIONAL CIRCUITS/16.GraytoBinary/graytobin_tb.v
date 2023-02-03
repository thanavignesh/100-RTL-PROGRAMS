module gray_2bin_tb();

   reg [3:0] G;
    wire [3:0] bin;
    
  
   
   gray2bin uut2(.G(G),.bin(bin));
   always
   begin        
      G <= 0; #10;
        G <= 1;   #10;
        G <= 2;   #10;
        G <= 3;   #10;
        G <= 4;   #10;
        G <= 5;   #10;
        G <= 6;   #10;
        G <= 7;   #10;
        G <= 8;   #10;
        G <= 9;   #10;
        G <= 10;  #10;
        G <= 11;  #10;
        G <= 12;  #10;
        G <= 13;  #10;
        G <= 14;  #10;
        G <= 15;  #10;
        #100;   
      $stop;
   end
endmodule
