module door_controller(input x, input clk, output reg y);
parameter s0=1'b0;
parameter s1=1'b1;
reg state;
reg next_state;
always @(posedge clk)
begin
state<=next_state;
end
always @(*)
begin
case(state)
   s0: begin
     if(x)
     next_state=s1;
     else
     next_state=s0;
   end
   s1: begin
    if(x)
    next_state=s0;
    else
    next_state=s1;
    end
default: next_state=s0;
endcase 
end
always @(*)
begin
case(state)
   s0: y=1'b0;
   s1: y=1'b1;
default: y=1'b0;
endcase 
end
endmodule 