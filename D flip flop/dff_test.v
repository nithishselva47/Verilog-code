module dff_test;

	// Inputs
	reg d;
	reg clk;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	dff uut (
		.d(d), 
		.clk(clk), 
		.q(q), 
		.qb(qb)
	);
	always #100 clk = ~clk;
	initial begin
		// Initialize Inputs
		d = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;d=0;clk=1;
        #100;d=1;clk=0;
		  #100;d=1;clk=1;
		// Add stimulus here

	end
      
endmodule
