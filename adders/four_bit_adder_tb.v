module four_bit_tb();
reg [3:0]a,b;
wire [7:0]y;
four_bit dut (.a(a),.b(b),.y(y));
initial begin
    a=4'b0101; b=4'b1010;
    #10;
    a=4'b1110; b=4'b1001;
    #10;
    $finish;
end
initial begin
    $monitor("a=%d b=%d y=%d",a,b,y);
end
endmodule