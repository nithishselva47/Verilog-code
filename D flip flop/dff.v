//nithish selva m 20l136//
module dff(d,clk,q,qb);
input d,clk;
output q,qb;
reg q,qb;
always@(posedge clk)
begin
q=d;
qb=~d;
end
endmodule
