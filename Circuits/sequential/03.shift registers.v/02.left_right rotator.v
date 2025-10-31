/*Build a 4-bit shift register (right shift), with asynchronous reset, synchronous load, and enable.

areset: Resets shift register to zero.
load: Loads shift register with data[3:0] instead of shifting.
ena: Shift right (q[3] becomes zero, q[0] is shifted out and disappears).
q: The contents of the shift register.
If both the load and ena inputs are asserted (1), the load input has higher priority.*/
module top_module(
    input clk,
    input load,
    input [1:0] ena,
    input [99:0] data,
    output reg [99:0] q); 
    always@(posedge clk)begin
        if(load)
            q<=data;
        else if(ena==2'b01)
            q<= {q[0],q[99:1]};
        else if(ena==2'b10)
            q<= {q[98:0],q[99]};
        else if(ena==2'b00)
            q<=q[99:0];
        else if(ena==2'b11)
            q<=q[99:0];        
            end
endmodule
