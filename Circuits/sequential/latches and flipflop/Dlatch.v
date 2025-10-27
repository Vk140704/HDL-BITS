module top_module (
    input d, 
    input ena,
    output reg q);
    always @(ena)begin
        if(ena)
            q<=d;
        else
            q<=q;
    end
endmodule
