/*Build a 4-digit BCD (binary-coded decimal) counter. Each decimal digit is encoded using 4 bits: q[3:0] is the ones digit, q[7:4] is the tens digit, etc. For digits [3:1], also output an enable signal indicating when each of the upper three digits should be incremented.

You may want to instantiate or modify some one-digit decade counters.*/
module top_module (
    input clk,
    input reset,   // Synchronous active-high reset
    output [3:1] ena,
    output [15:0] q);
    
    assign ena[1]= q[3:0]==4'd9;
    assign ena[2]=(ena[1]&&q[7:4]==4'd9);
    assign ena[3]=(ena[2]&&ena[1]&&q[11:8]==4'd9);
  
    bcdcount b1(clk,reset,1,q[3:0]);
    bcdcount b2(clk,reset,ena[1],q[7:4]); 
    bcdcount b3(clk,reset,ena[2],q[11:8]);
    bcdcount b4(clk,reset,ena[3],q[15:12]);
endmodule


module bcdcount (input clk,reset,ena, output  [3:0]q);
    always@(posedge clk)begin
        if (reset)
            q<=4'b0;
        else if(q==4'd9&& ena)
            q<=4'b0;
        else 
            q=ena?q+1:q;
        
            
            end
            endmodule
            
            
