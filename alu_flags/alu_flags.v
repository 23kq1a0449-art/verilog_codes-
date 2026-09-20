module alu_flags(
    input  [3:0] a,
    input  [3:0] b,
    input  cin,
    output [3:0] result,
    output carry,
    output zero,
    output overflow,
    output sign
);

wire [4:0] temp;

assign temp = a + b + cin;

assign result = temp[3:0];

assign carry = temp[4];

assign zero = (result == 4'b0000);

assign sign = result[3];

assign overflow = (~(a[3] ^ b[3])) & (result[3] ^ a[3]);

endmodule