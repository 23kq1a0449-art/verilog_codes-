module register_file_tb;
reg clk;
reg we;
reg [1:0] waddr;
reg [7:0] din;
reg [1:0] raddr;
wire [7:0] dout;

register_file dut(
    .clk(clk),
    .we(we),
    .waddr(waddr),
    .din(din),
    .raddr(raddr),
    .dout(dout)
);
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
    we=1; waddr=2'b00; din=8'hAA;
    #10;
    we=1; waddr=2'b01; din=8'hBB;
    #10;
    we=1; waddr=2'b10; din=8'hCC;
    #10;
    we=0; raddr=2'b00;
    #10;
    $display("raddr=%b dout=%h", raddr, dout);
    #10;
    raddr=2'b01;
    #10;
    $display("raddr=%b dout=%h", raddr, dout);
    #10;
    raddr=2'b10;
    #10;
    $display("raddr=%b dout=%h", raddr, dout);
    #10;
    $finish;

end
endmodule