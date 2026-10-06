module ram_basic_tb;
reg we;
reg clk;
reg [2:0]addr;
reg [7:0]din;
wire [7:0]dout;
ram_basic dut(
    .clk(clk),
    .we(we),
    .addr(addr),
    .din(din),
    .dout(dout)
);
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
    we=1; addr=3'b000; din=8'hAA;
    #10;
    we=1; addr=3'b001; din=8'hBB;
    #10;
    we=1; addr=3'b010; din=8'hCC;
    #10;
    we=0; addr=3'b000;
    #10;
    $display("addr=%b dout=%h", addr, dout);
    #10;
    addr=3'b001;
    #10;
    $display("addr=%b dout=%h", addr, dout);
    #10;
    addr=3'b010;
    #10;
    $display("addr=%b dout=%h", addr, dout);
    #10;
    $finish;

end 
endmodule