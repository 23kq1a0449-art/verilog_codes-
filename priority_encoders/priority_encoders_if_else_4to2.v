module priority_encoder(input [3:0]in,output reg [1:0]y);
always @(*)
begin
    if(in[3])
    y=2'b11;
    else if(in[2])
    y=2'b10;
    else if(in[1])
    y=2'b01;
    else if(in[0])
    y=2'b00;
end
endmodule