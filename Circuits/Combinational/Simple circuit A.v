/*Taken from 2015 midterm question 4

Module A is supposed to implement the function z = (x^y) & x. Implement this module.*/
Answer:
module top_module (input x, input y, output z);
wire w1;
 //   xor g1(w1,x,y);
 //   and g2(z,w1,x);
    assign w1=x^y;
    assign z = w1&x;
endmodule
