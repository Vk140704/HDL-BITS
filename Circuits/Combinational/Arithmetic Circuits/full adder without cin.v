module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
     //assign sum=x+y;
    wire cin,cout,c1,c2,c3;
    fa x1(.x(x[0]),.y(y[0]),.cin(cin),.sum(sum[0]),.cout(c1));
    fa x2(.x(x[1]),.y(y[1]),.cin(c1),.sum(sum[1]),.cout(c2));
    fa x3(.x(x[2]),.y(y[2]),.cin(c2),.sum(sum[2]),.cout(c3));
    fa x4(.x(x[3]),.y(y[3]),.cin(c3),.sum(sum[3]),.cout(sum[4]));
    
endmodule
module fa(input x,y,cin,output cout,sum);
    assign sum =(x^y^cin);
    assign cout=((x&y)|(y&cin)|(cin&x));
endmodule 
    
