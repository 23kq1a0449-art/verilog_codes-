module traffic_controller(input clk,input reset,output reg [1:0]y);
parameter s0=2'b00;
parameter s1=2'b01;
parameter s2=2'b10;
reg [1:0]state;
reg [1:0]next_state;
always @(posedge clk)
begin
    if (reset)
        state <= s0;
    else
        state <= next_state;
end
always @(*)
begin
case(state)
     s0: next_state=s1;
     s1: next_state=s2;
     s2: next_state=s0;
default : next_state=s0;
endcase 
end
always @(*)
begin
case(state)
s0 : y=2'b00;
s1 : y=2'b01;
s2 : y=2'b10;
default: y=2'b00; 
endcase
end
endmodule
