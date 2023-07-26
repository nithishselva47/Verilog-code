module fullsubtractor(a,b,c,d,bo);
input a,b,c;
output d,bo;
assign d=a^b^c;
assign bo=c^~(a^b)|~a&b;
endmodule
