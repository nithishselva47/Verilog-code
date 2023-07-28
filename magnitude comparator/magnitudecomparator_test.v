//nithish selva m 20l136//
module magnitudecomparator_test;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire x;
	wire y;
	wire z;

	// Instantiate the Unit Under Test (UUT)
	magnitudecomparator uut (
		.a(a), 
		.b(b), 
		.x(x), 
		.y(y), 
		.z(z)
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
        
		// Add stimulus here

	end
      
endmodule
