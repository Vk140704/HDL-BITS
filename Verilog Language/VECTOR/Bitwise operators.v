module top_module( 
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);
    wire w1;
    assign w1= a||b;
    assign out_or_bitwise[2:0]=a[2:0]|b[2:0];
    assign out_or_logical= w1;
    assign out_not[5]=!b[2];
    assign out_not[4]=!b[1];
    assign out_not[3]=!b[0];
    assign out_not[2]=!a[2];
    assign out_not[1]=!a[1];
    assign out_not[0]=!a[0];
        endmodule
