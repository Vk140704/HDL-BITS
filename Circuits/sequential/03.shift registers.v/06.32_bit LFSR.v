/*See Lfsr5 for explanations.

Build a 32-bit Galois LFSR with taps at bit positions 32, 22, 2, and 1.*/
module top_module(
    input clk,
    input reset,    // Active-high synchronous reset to 32'h1
    output [31:0] q
); 
    integer i;
    wire feedback;
    assign feedback =q[0];
    always@(posedge clk)begin
        for(i=0;i<32;i=i+1) begin
            if(reset)
                q<=32'h1;
            else if(i==0)
                q[0]<=q[1]^feedback;
            else if (i==1)
                q[1]<=q[2]^feedback;
            else if (i==21)
                q[21]<=q[22]^feedback;
            else if (i==31)
                q[31]<=q[0];
            else 
                q[i]<=q[i+1];
                end  
    end
endmodule
