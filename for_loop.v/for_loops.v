module for_loops(input [7:0]a,input [7:0]b,output reg [15:0]y,output reg [7:0]count,output reg [7:0]count1,output reg [7:0]countc);
integer i;
integer j;
integer k;
always @(*)
begin
count=0;
 count1=0;
  countc=0;
 for(i=0;i<8;i=i+1)
      if(a[i]==1'b0)begin
         count=count+1;end
         
         if(count<=3)
              begin
              y={a,b};
             
                for(k=0;k<16;k=k+1)
                 if(y[k]==1'b1)
                    countc=countc+1;end 
           
         else
         begin
          
            y=a<<2;
               for(j=0;j<8;j=j+1)
                  begin if(a[j]==1'b1 )
                      count1=count1+1;
                               end
      
         end
end
endmodule