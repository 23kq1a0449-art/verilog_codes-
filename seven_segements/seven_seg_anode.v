
module seven_seg_anode(
    input [3:0] sel,
    output reg [6:0] y
);

always @(*) begin
    case (sel)
        4'd0: y = 7'b0000001;
        4'd1: y = 7'b1001111;
        4'd2: y = 7'b0010010;
        4'd3: y = 7'b0000110;
        4'd4: y = 7'b1001100;
        4'd5: y = 7'b0100100;
        4'd6: y = 7'b0100000;
        4'd7: y = 7'b0001111;
        4'd8: y = 7'b0000000;
        4'd9: y = 7'b0000100;
        default: y = 7'b1111111;
    endcase
end

endmodule
