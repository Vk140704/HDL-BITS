module top_module( 
    input [3:0] in,
    output reg out_and,
    output reg out_or,
    output reg out_xor
);
    assign out_and = in[3]&in[2]&in[1]&in[0];
    assign out_or = in[3]|in[2]|in[1]|in[0];
    assign out_xor = in[3]^in[2]^in[1]^in[0];
    
    endmodule
