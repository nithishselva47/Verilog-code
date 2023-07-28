module lfsr_test;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [2:0] q;

	// Instantiate the Unit Under Test (UUT)
	lfsr uut (
		.clk(clk), 
		.rst(rst), 
		.q(q)
	);

	always #100 clk = ~clk;  
    // Testcase  
    initial begin  
        clk <= 0; rst=1;  
		  #100 rst=0; 
		  #100 clk <= 0; rst=1;  
		  #100 rst=0; 	
		// Add stimulus here

	end
      
endmodule
