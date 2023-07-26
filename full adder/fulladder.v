//nithish selva 20l136//
module fulladder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
assign sum=a^b^c;
assign carry =(a&b)|(a^b)&c;
endmodule
