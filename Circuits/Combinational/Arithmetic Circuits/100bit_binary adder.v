/*Create a 100-bit binary adder. The adder adds two 100-bit numbers and a carry-in to produce a 100-bit sum and carry out.*/
module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    wire [100:0]s1;
    assign s1= a+b+cin;
    assign sum=s1[99:0];
    assign cout =s1[100];
endmodule
