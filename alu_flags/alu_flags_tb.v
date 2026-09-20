module alu_flags_tb();
reg [3:0]a,b;
reg cin;
wire [3:0] result;
wire carry,zero,overflow,sign;
 alu_flags dut(
    .a(a),
    .b(b),
    .cin(cin),
    .result(result),
    .carry(carry),
    .zero(zero),
    .overflow(overflow),
    .sign(sign)
);
initial begin
    a=4'b1000; b=4'b1100; cin=1'b0;
    #10;
    $monitor("a=%b b=%b cin=%b result=%b carry=%b zero=%b overflow=%b sign=%b",a,b,cin,result,carry,zero,overflow,sign);
end
endmodule

