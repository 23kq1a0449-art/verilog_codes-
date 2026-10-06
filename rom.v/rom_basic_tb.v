module rom_basic_tb;

reg [2:0] addr;
wire [7:0] data;

rom_basic dut(
    .addr(addr),
    .data(data)
);

initial begin

    addr = 3'b000;
    #10;
    $display("addr=%b data=%h", addr, data);

    #10;
    addr = 3'b010;
    #10;
    $display("addr=%b data=%h", addr, data);

    #10;
    $finish;

end

endmodule