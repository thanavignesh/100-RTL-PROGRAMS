module fun (a, b, c, d, e, f);

input a,b,c,d,e;
output wire f;

function call;
       input a,b,c,d;	
	begin 
	call = ((a+b)+(c-d));
end
endfunction

assign f = (call(a,b,c,d)) ? e:0;

endmodule
