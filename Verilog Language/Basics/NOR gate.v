Create a module that implements a NOR gate. A NOR gate is an OR gate with its output inverted. A NOR function needs two operators when written in Verilog.

An assign statement drives a wire (or "net", as it's more formally called) with a value.

  ANSWER
  module top_module( 
    input a, 
    input b, 
    output reg out );
    assign out=!(a|b);
endmodule
