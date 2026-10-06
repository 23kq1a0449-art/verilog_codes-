module ram_basic(input clk,input we,input [2:0]addr,input[7:0]din,output reg[7:0]dout);
reg [7:0] mem [2:0];
always @(posedge clk) begin
    if(we) begin
        mem[addr]<=din;
    end
        dout<=mem[addr];
end
endmodule