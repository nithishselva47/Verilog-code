//nithish selva M 20l136//
module halfsubractor(a,b,d,bo);
input a,b;
output d,bo;
assign d=a^b;
assign bo=((~a)&b);
endmodule
