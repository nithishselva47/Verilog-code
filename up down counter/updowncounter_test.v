//nithish selva m 20l136//
module updowncounter_test;

	// Inputs
	reg clk;
	reg reset;
	reg up_down;

	// Outputs
	wire [3:0] counter;

	// Instantiate the Unit Under Test (UUT)
	updowncounter uut (
		.clk(clk), 
		.reset(reset), 
		.up_down(up_down), 
		.counter(counter)
	);

	initial begin
		// Initialize Inputs
		clk=0;
forever #50 clk=~clk;
end
initial begin
reset=1; up_down=0;
#20 reset=0; up_down=1;
        
		// Add stimulus here

	end
      
endmodule
