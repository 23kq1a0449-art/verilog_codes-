module carry_look_tb();
reg [3:0]a,b;
reg cin;
wire cout;
wire [3:0]s;
carry_look dut (.a(a),.b(b),.cin(cin),.cout(cout),.s(s));
initial begin 
a=4'b0101;
b=4'b1110;
cin=1'b1;
#10;
a=4'b0101;
b=4'b1101;
cin=1'b1;
#10;
$finish;
end
initial begin
    $monitor("a=%b b=%b cin=%b s=%d cout=%d",a,b,cin,s,cout);
end
endmodule