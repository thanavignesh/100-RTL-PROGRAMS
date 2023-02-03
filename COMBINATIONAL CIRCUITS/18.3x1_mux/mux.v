module mux (a, b, c,  s, o);
        input        a, b, c ;
        input  [1:0] s;
        output       o;
        reg          o;
        always @(a or b or c  or s)
        begin
           if (s == 2'b00)
              o = a;
           else if (s == 2'b01)
              o = b;
           else if (s == 2'b10)
              o = c;
			else 
			o=c;
        end
        endmodule
