module tristate_buffer_tb;
  reg  a,c;
  wire y;
  
  tristate_buffer tri_state(.a(a),.c(c),.y(y));
  initial begin
		$display ("RESULT\ta\ty");

		a = 0; c = 0; # 100; 
		if ( y === 1'bz ) 
			$display ("PASS\t%d\t%d",a,y);
		else
			$display ("FAIL\t%d\t%d",a,y);

		a = 0; c = 1; # 100; 
		if ( y === 0 ) 
			$display ("PASS\t%d\t%d",a,y);
		else
			$display ("FAIL\t%d\t%d",a,y);

		a = 1; c = 0; # 100; 
		if ( y === 1'bz ) 
			$display ("PASS\t%d\t%d",a,y);
		else
			$display ("FAIL\t%d\t%d",a,y);

		a = 1; c = 1; # 100; 
		if ( y === 1 ) 
			$display ("PASS\t%d\t%d",a,y);
		else
			$display ("FAIL\t%d\t%d",a,y);

	end
  
  
endmodule

