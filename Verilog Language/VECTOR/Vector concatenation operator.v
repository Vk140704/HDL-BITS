Given several input vectors, concatenate them together then split them up into several output vectors. There are six 5-bit input vectors: a, b, c, d, e, and f, for a total of 30 bits of input. There are four 8-bit output vectors: w, x, y, and z, for 32 bits of output. The output should be a concatenation of the input vectors followed by two 1 bits:

ANSWER
        module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );
    wire [31:0]up;
    assign up={a,b,c,d,e,f,2'b11};
    
    assign w=up[31:24];
    assign x=up[23:16];
    assign y=up[15:8];
    assign z=up[7:0];
endmodule
