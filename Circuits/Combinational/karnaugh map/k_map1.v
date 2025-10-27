/*Consider the function f shown in the Karnaugh map below.
Implement this function. d is don't-care, which means you may choose to output whatever value is convenient.*/
module top_module (
    input [4:1] x, 
    output f );
    wire x1,x2,x3,x4;
    assign x1=x[1];
   assign x2=x[2];
   assign x3=x[3];
   assign x4=x[4];
    assign f = (~x1&x3)|(~x3&x1&x2);
endmodule
