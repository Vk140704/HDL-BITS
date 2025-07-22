Build a circuit with no inputs and one output that outputs a constant 0

Now that you've worked through the previous problem, let's see if you can do a simple problem without the hints.
Expected solution length: Around 1 line.

Fun fact: For Quartus synthesis, not assigning a value to a signal usually results in 0. This problem is actually easier than the previous one.

Answer:
       module top_module(
    output zero
);// Module body starts after semicolon
 assign zero=1'b0;
endmodule
