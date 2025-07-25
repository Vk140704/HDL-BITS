This problem is similar to the previous one (module). You are given a module named mod_a that has 2 outputs and 4 inputs, in that order. You must connect the 6 ports by position to your top-level module's ports out1, out2, a, b, c, and d, in that order.

You are given the following module:

module mod_a ( output, output, input, input, input, input );





ANSWER:
module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
    mod_a (out1,out2,a,b,c,d);
    //mod_a ask(.out2(out2),.out1(out1),.d(d),.c(c),.b(b),.a(a)); this method wont  come because it has not declare the prt list name in top module so we only has the option to apply the 	position method not by name....
    
endmodule
