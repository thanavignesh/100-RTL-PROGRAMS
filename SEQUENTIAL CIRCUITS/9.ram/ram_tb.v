module ram_tb();
	
    reg clk = 0;
	reg [1023:0] data_in;  
	reg [4:0] address; 
	reg write_en;      
	wire [1023:0] data_out;
	reg [1:0] delay;
	reg [1023:0] wr_data;
	integer success_count, error_count, test_count;
    integer i;
	
ram RAM0(
        .clk     (clk     ),
	    .data_in (data_in ),  
	    .address (address ), 
	    .write_en(write_en),  
	    .data_out(data_out)   
    );
	

    task write_data(input [4:0] address_in, input [1023:0] d_in);
	    begin
		    @(posedge clk); 
			write_en = 1;
		    address  = address_in;
			data_in  = d_in;
		end
	endtask
	
	task read_data(input [4:0] address_in);
	    begin
		    @(posedge clk);
			write_en = 0;
		    address  = address_in;
		end
	endtask
	always begin #0.5 clk = ~clk; end
	
    initial begin
	    $dumpfile("waveform.vcd");
	    $dumpvars;

		#1.3; 
		for (i=0; i<17; i=i+1) begin
		    wr_data = $random;
		    write_data(i, wr_data); 
			read_data(i);          
		end

	    read_data(7);       
	    read_data(8); 
	    #40 $finish;
	end
endmodule
