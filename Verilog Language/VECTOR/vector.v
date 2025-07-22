Vectors are used to group related signals using one name to make it more convenient to manipulate. For example, wire [7:0] w; declares an 8-bit vector named w that is functionally equivalent to having 8 separate wires.

Notice that the declaration of a vector places the dimensions before the name of the vector, which is unusual compared to C syntax. However, the part select has the dimensions after the vector name as you would expect.  
module top_module ( 
    input wire [2:0] vec,
    output wire [2:0] outv,
    output wire o2,
    output wire o1,
    output wire o0  ); // Module body starts after module declaration
    assign o0=vec[0];
    assign o1=vec[1];
    assign o2=vec[2];
    assign outv=vec[2:0];
endmodule
