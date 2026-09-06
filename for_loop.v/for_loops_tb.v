module for_loops_tb();
reg [7:0]a;
reg [7:0]b;
wire [15:0]y;
wire [7:0]count;
wire [7:0]count1;
wire [7:0]countc;
for_loops dut(
.a(a),
.b(b),
.y(y),
.count(count),
.count1(count1),
.countc(countc)
);
initial begin
    a=8'b11001100;
    $display("a=%b",a);
    b=8'b01101010;
    $display("b=%b",b);
     #10;
    $display("y=%b,count=%d,count1=%d,countc=%d",y,count,count1,countc);
   
    $finish;
end
endmodule