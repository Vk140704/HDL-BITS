One drawback of the ripple carry adder (See previous exercise) is that the delay for an adder to compute the carry out (from the carry-in, in the worst case) is fairly slow, and the second-stage adder cannot begin computing its carry-out until the first-stage adder has finished. This makes the adder slow. One improvement is a carry-select adder, shown below. The first-stage adder is the same as before, but we duplicate the second-stage adder, one assuming carry-in=0 and one assuming carry-in=1, then using a fast 2-to-1 multiplexer to select which result happened to be correct.

In this exercise, you are provided with the same module add16 as the previous exercise, which adds two 16-bit numbers with carry-in and produces a carry-out and 16-bit sum. You must instantiate three of these to build the carry-select adder, using your own 16-bit 2-to-1 multiplexer.

Connect the modules together as shown in the diagram below. The provided module add16 has the following declaration:

module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );


    ANSWER:

  module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] sumlow,sumhi,sum1,sum0;
    wire clow,c0,c1;
    add16 adderlow(.a(a[15:0]),.b(b[15:0]),.cin(1'b0),.sum(sumlow),.cout(clow));
    add16 adderhi1(.a(a[31:16]),.b(b[31:16]),.cin(1'b0),.sum(sum0),.cout(c0)); 
    add16 adderhi2(.a(a[31:16]),.b(b[31:16]),.cin(1'b1),.sum(sum1),.cout(c1));
         
                 mux16 ms(.in1(sum0),.in2(sum1),.sel(clow),.out(sumhi));
                  assign sum = {sumhi,sumlow}; 

endmodule
module mux16(input [15:0] in1,in2,
             input sel,
             output [15:0] out);
 assign out=sel?in2:in1;
    
endmodule
