Create a module that implements an AND gate.
This circuit now has three wires (a, b, and out). Wires a and b already have values driven onto them by the input ports. But wire out currently is not driven by anything. Write an assign statement that drives out with the AND of signals a and b.

ANSWER
  module top_module( 
    input a, 
    input b, 
    output reg out );
 assign out=a&b;
   
endmodule
