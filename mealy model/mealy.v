//nithish selva m//
module mealy(input rst,clk,x,output reg y);
parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
reg [1:0] nxt_st,prt_st;
always@(posedge clk or posedge rst)

begin
if(rst) begin prt_st=s0;
y=1'b1;
end
else
prt_st=nxt_st;
end
always@(prt_st or x)
begin
case(prt_st)
s0:begin 
if(x==1'b1) 
begin y=1'b1; nxt_st=s0; end
else
 begin y=1'b0;nxt_st=s1;end
 end
s1:begin 
if(x==1'b1) 
begin y=1'b0; nxt_st=s3; end
else begin y=1'b1;nxt_st=s2;end
end
s2:begin
 if(x==1'b1)
 begin y=1'b0; nxt_st=s1; end
else 
begin y=1'b1;nxt_st=s0;end
end
s3:begin 
if(x==1'b1) begin y=1'b1; nxt_st=s2; end
else 
begin y=1'b0;nxt_st=s3;end
end

endcase
end
endmodule
