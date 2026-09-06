module task_tb();

reg [3:0] a,b;
wire [3:0] ans1,ans2,ans3,ans4;

cal dut(
    .a(a),
    .b(b),
    .ans1(ans1),
    .ans2(ans2),
    .ans3(ans3),
    .ans4(ans4)
);

initial begin
    a = 4'b0101;
    b = 4'b0101;

    #10;

    $display("ans1=%b,ans2=%b,ans3=%b,ans4=%b",
             ans1,ans2,ans3,ans4);

    $finish;
end

endmodule