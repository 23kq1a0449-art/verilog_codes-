module sequence_detector_101(input x,input clk,output reg y);
parameter s0=2'b00;
parameter s1=2'b01;
parameter s2=2'b10;
reg [1:0]state;
reg [1:0]next_state;
always @(posedge clk)
begin
state<=next_state;
end
always @(*)
begin
case(state)
 s0:begin
   if(x)
   next_state=s1;
  else
   next_state=s0;
 end
s1: begin
if(x)
next_state=s1;
else
next_state=s2;
end
s2: begin
if(x)
next_state=s1;
else
next_state=s0;
end

default: next_state=s0;
endcase
end
always @(*)
begin
case(state)
    s0: y=1'b0;
    s1: y=1'b0;
    s2: begin
        if(x)
           y=1'b1;
        else
           y=1'b0;
       end
default: y=1'b0;
endcase
end
endmodule

