
module door_controller_tb ();
reg x,clk;
wire y;
door_controller dut(.x(x),.clk(clk),.y(y));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
x = 0;
#10;
x = 1;
#10;
x = 0;
#10
x = 1;
#10;
$finish;
end
initial begin
    $monitor("time=%0t x=%b state_output(y)=%b", $time, x, y);
end
endmodule