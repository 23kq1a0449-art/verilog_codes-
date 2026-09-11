module comparator_4bit(
    input  [3:0] a,
    input  [3:0] b,
    output reg  greater,
    output reg   less,
    output reg   equal
);

always @(*)
begin
    greater = 0;
    less    = 0;
    equal   = 0;

    if (a > b)
        greater = 1;
    else if (a < b)
        less = 1;
    else
        equal = 1;
end

endmodule