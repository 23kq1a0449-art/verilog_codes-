
 module sequence_detector_1011(input x,input clk,output reg y);
parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s4=3'b100;
reg [2:0]state;
reg [2:0]next_state;
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
next_state=s1;
else
next_state=s2;

end
s2: begin
if(x)
next_state=s3;
else
next_state=s2;
end
s3: begin
if(x)
next_state=s4;
else
next_state=s3;
end
s4: begin
if(x)
next_state=s1;
else
next_state=s2;
end
default : next_state =s0;
endcase 
end
always @(*)
begin
case(state)
      s0 : y=1'b0;
      s1 : y=1'b0;
      s2 : y=1'b0;
      s3 : y=1'b0;
      s4 : y=1'b1;
default :  y=1'b0;
endcase
end
endmodule
