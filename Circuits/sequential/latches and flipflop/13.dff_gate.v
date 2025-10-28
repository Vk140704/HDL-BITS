module top_module (
    input clk,
    input x,
    output z
); 
    wire d1,d2,d3;
    reg q1,q2,q3;
    
        xor(d1,x,q1);
        and(d2,x,~q2);
        or(d3,x,~q3);
       nor(z,q1,q2,q3);
    always@(posedge clk)begin
        q1<=d1;
        q2<=d2;
        q3<=d3;
    end
    
endmodule
