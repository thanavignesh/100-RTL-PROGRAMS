module bi #(parameter MSB=4) ( input din,
				      input clk,
				      input en,
				      input dir,
				      input rst,
				      output reg[MSB-1:0]out);
	  always@(posedge clk)
		  if(rst)
			  out<=0;
		  else begin
			  if(en)
				  case(dir)
					  0:out<={out[MSB-2:0],din};
					  1:out<={din,out[MSB-1:0]};
				  endcase
			else
				out<=out;
		end
endmodule
