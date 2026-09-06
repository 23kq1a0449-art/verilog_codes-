module cal(a,b,ans1,ans2,ans3,ans4);
input [3:0]a,b;
output reg [3:0]ans1,ans2,ans3,ans4;
task clc;
input [3:0]x;
input [3:0]y;
output [3:0]z1,z2,z3,z4;
begin
    z1=x+y;
    z2=x-y;
    z3=x*y;
    z4=x/y;
end
endtask
always @(*)
begin
    clc(a,b,ans1,ans2,ans3,ans4);

end
endmodule