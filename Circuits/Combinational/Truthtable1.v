/*In the previous exercises, we used simple logic gates and combinations of several logic gates. These circuits are examples of combinational circuits. Combinational means the outputs of the circuit is a function (in the mathematics sense) of only its inputs. This means that for any given input value, there is only one possible output value. Thus, one way to describe the behaviour of a combinational function is to explicitly list what the output should be for every possible value of the inputs. This is a truth table.

For a boolean function of N inputs, there are 2N possible input combinations. Each row of the truth table lists one input combination, so there are always 2N rows. The output column shows what the output should be for each input value.*/
Answer:
module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
    wire w1,w2;
    and g1(w1,x2,~x3);
    and g2(w2,x3,x1);
    or g3(f,w1,w2);

endmodule
