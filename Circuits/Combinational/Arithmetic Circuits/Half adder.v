/*Create a half adder. A half adder adds two bits (with no carry-in) and produces a sum and carry-out*/
module top_module( 
    input a, b,
    output cout, sum );
  /*  and(cout,a,b);
    xor(sum,a,b);*/
    //using mux
    wire [3:0]mux_in;
    wire [3:0]mux_in1;
    assign mux_in = 4'b0110;
    assign sum = mux_in[{a,b}];//mux_in[{A,B}] uses that 2-bit number as an index to “pick” the corresponding bit (0, 1, 2, or 3) from the wire/vector.
    assign mux_in1 = 4'b1000;
    assign cout = mux_in1[{a,b}];
    
     
endmodule
