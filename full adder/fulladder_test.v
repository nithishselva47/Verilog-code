//nithish selva 20l136//
module fulladder_test;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire s;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	fulladder uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.s(s), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		#100 a = 0;b = 0;c=1;
		#100 a = 0;b = 1;c=0;
		#100 a = 0;b = 1;c=1;
		#100 a = 1;b = 0;c=0;
		#100 a = 1;b = 0;c=1;
		#100 a = 1;b = 1;c=0;
		#100 a = 1;b = 1;c=1;

        
		// Add stimulus here

	end
      
endmodule
