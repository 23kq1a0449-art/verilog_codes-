module alu_s_tb();
reg [3:0]a,b;
reg [1:0]sel;
wire [7:0]y;
alu_s dut(.a(a),.b(b),.sel(sel),.y(y));
initial begin
    a=4'b0010;
    b=4'b0101;
    #10;
    $monitor("a=%b b=%b sel=%b y=%b",a,b,sel,y);
    sel=2'b00;
    #10;
    sel=2'b10;
    #10;
    sel=2'b01;
    #10;
    sel=2'b11;
    #10;
end
endmodule