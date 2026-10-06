module register_file(
    input clk,
    input we,
    input [1:0] waddr,
    input [7:0] din,
    input [1:0] raddr,
    output [7:0] dout
);

reg [7:0] reg_file [0:3];

always @(posedge clk) begin
    if (we)
        reg_file[waddr] <= din;
end

assign dout = reg_file[raddr];

endmodule