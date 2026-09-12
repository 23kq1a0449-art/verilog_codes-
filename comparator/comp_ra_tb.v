module comp_ra_tb();
reg[3:0]a,b;
wire greater,less,equal;
comparator_4bit dut(.a(a),.b(b),.greater(greater),.less(less),.equal(equal));
initial begin
    a=4'b1111;
    b=4'b1101;
    #10;
    a=4'b0101;
    b=4'b0111;
    #10;
    $finish;
end
initial begin
    $monitor("a=%b b=%b greater=%d less=%d equal=%d",a,b,greater,less,equal);
end
endmodule