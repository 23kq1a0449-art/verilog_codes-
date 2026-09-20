module priority_encoders_case(input [3:0]in,output reg [1:0]y);
always @(*)
begin
    casez(in)
    4'b1???: y=2'b11;
    4'b?1??: y=2'b10;
    4'b??1?: y=2'b01;
    4'b???1: y=2'b00;
default: y=2'b00;
    endcase
end
endmodule