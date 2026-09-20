module priority_encoders_case_tb();
reg [3:0]in;
wire [1:0]y;
priority_encoders_case dut (.in(in),.y(y));
initial begin
     $monitor("in=%b y=%b",in,y);
    in=4'b1000;
    #10;
    in=4'b0010;
    #10;
    
    in=4'b0100;
    #10;
    in=4'b0001;
    #10;
   
end
endmodule