/*Now that you know how to build a full adder, make 3 instances of it to create a 3-bit binary ripple-carry adder. The adder adds two 3-bit numbers and a carry-in to produce a 3-bit sum and carry out. To encourage you to actually instantiate full adders, also output the carry-out from each full adder in the ripple-carry adder. cout[2] is the final carry-out from the last full adder, and is the carry-out you usually see.*/
module top_module_1( 
    input  a, b,
    input cin,
    output  cout,
    output  sum );
    
    assign cout = (a&b|b&cin|cin&a);
    assign sum = (a^b^cin);

endmodule
module top_module(input [2:0]a,b,
          input cin,
          output [2:0]cout,
          output [2:0]sum);
top_module_1 m1(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(cout[0]));
top_module_1 m2(.a(a[1]),.b(b[1]),.cin(cout[0]),.sum(sum[1]),.cout(cout[1]));
    top_module_1 m3(.a(a[2]),.b(b[2]),.cin(cout[1]),.sum(sum[2]),.cout(cout[2]));
endmodule
