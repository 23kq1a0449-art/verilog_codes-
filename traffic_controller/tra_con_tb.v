module traffic_controller_tb();
reg clk;
reg reset;
wire [1:0]y;
traffic_controller dut(.clk(clk),.reset(reset),.y(y));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
reset=1;
#5;
reset=0;
#10;
reset=1;
#15 reset=0;
#20 $finish;
end
initial begin
    forever begin
        @( reset or y);
        if (^y !== 1'bx)
            $display("time=%0t reset=%b y=%b", $time, reset, y);
    end
end
endmodule 
