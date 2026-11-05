

module seven_seg_anode_tb;

reg [3:0] sel;
wire [6:0] y;

seven_seg_anode dut (
    .sel(sel),
    .y(y)
);

integer i;

initial begin
    for (i = 0; i <= 9; i = i + 1) begin
        sel = i;
        #10;
        $display("sel=%d, y=%b", sel, y);
    end

    $finish;
end

endmodule
