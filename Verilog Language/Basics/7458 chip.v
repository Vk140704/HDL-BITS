The 7458 is a chip with four AND gates and two OR gates. This problem is slightly more complex than 7420.

Create a module with the same functionality as the 7458 chip. It has 10 inputs and 2 outputs. You may choose to use an assign statement to drive each of the output wires, or you may choose to declare (four) wires for use as intermediate signals, where each internal wire is driven by the output of one of the AND gates. For extra practice, try it both ways.

ANSWER
  module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
wire w1,w2,w3,w4;
    assign w1=(p1a & p1b & p1c);
    assign w2=(p1d & p1e & p1f);
    assign w3=(p2a & p2b);
    assign w4=(p2c & p2d);
    assign p2y = w3|w4;
    assign p1y = w1|w2;
    
endmodule
