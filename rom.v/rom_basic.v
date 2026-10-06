module rom_basic(input [2:0] addr,output reg[7:0] data);
always @(*) begin
    case(addr)
    3'b000: data=8'h10;
    3'b001: data=8'h20;
    3'b010: data=8'h30;
    3'b011: data=8'h40;
    3'b100: data=8'h50;
    3'b101: data=8'h60;
    3'b110: data=8'h70;
    3'b111: data=8'h80;
    default: data=8'h00;
    endcase
end
endmodule