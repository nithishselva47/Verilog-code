//nithish selva m 20l136//
module mg4bit_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire x;
	wire y;
	wire z;

	// Instantiate the Unit Under Test (UUT)
	mg4bit uut (
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
		#100 a = 4'b1111;b = 4'b1101;
		#100 a = 4'b1100;b = 4'b1010;
		#100 a = 4'b0000;b = 4'b0101;
		#100 a = 4'b0110;b = 4'b1111;
        
		// Add stimulus here

	end
      
endmodule
