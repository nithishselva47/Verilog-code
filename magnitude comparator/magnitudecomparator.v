module magnitudecomparator(
    input a,b,
    output x,y,z
    );
assign x=a&~b;
assign y=~a&b;
assign z=~(x+y);

endmodule
