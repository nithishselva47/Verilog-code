module mg4bit(input [3:0]a,b,output reg x,y,z);
always @ (a,b)
    begin 
        if (a < b)
		  begin
            x=0; y=0; z=1;
		  end  
        else if (a == b)
		  begin
            x=0; y=1; z=0;    
			end  				
		  else
		  begin
           x=1; y=0; z=0;
			 end  
end  
endmodule
