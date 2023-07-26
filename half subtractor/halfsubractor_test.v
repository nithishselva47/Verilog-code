//nithish selva M 20l136//
module halfsubtractor_test;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire d;
	wire bo;

	// Instantiate the Unit Under Test (UUT)
	halfsubtractor uut (
		.a(a), 
		.b(b), 
		.d(d), 
		.bo(bo)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100 a = 0;b = 1;
		#100 a = 1;b = 0;
		#100 a = 1;b = 1;
        
		// Add stimulus here

	end
      
endmodule
