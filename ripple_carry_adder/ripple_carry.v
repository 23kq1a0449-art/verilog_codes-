module ripple_carry(a,b,cin,s,cout);
input [3:0]a,b;
input cin;
output [3:0]s;
output cout;
wire c0,c1,c2;
fu_ad fa0(a[0],b[0],cin,s[0],c0);
fu_ad fa1(a[1],b[1],c0,s[1],c1);
fu_ad fa2(a[2],b[2],c1,s[2],c2);
fu_ad fa3(a[3],b[3],c2,s[3],cout);
endmodule
module fu_ad(a,b,cin,s,cout);
input a,b,cin;
output cout,s;

assign s=a^b^cin;
assign cout=(a&b)|(b&cin)|(a&cin);
endmodule
