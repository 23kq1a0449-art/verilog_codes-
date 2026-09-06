module sequence_detector_101_tb();
reg x;
reg clk;
wire y;
sequence_detector_101 dut(.x(x),.clk(clk),.y(y));
initial begin
clk=0;
forever #3 clk=~clk;
end
initial begin
x=0;
#6;
x=1;
#6;
x=0;
#6;
x=1;
#6;
x=0;
#6;
x=1;
#6;
$finish;
end
initial begin
    $monitor("Time=%0t  x=%b  y=%b", $time, x, y);
end

endmodule 