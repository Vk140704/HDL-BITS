Build a 4-bit priority encoder. For this problem, if none of the input bits are high (i.e., input is zero), output zero. Note that a 4-bit number has 16 possible combinations.
ANSWER:
        // synthesis verilog_input_version verilog_2001
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    always@(*)begin
        if (in[3])
           pos =3;
        else if (in[2])
             pos =2;
        else if (in[1])
             pos =1;
        else if  (in[0])
             pos = 0;
            else 
                pos =0;      
    end
endmodule
//Appo compiler enna pannum?

➡️ Truncates: 32'b000...000011 → only last 2 bits 2'b11 save pannum.

So simulation la correct-a output varalam.
Aana strict checker solum: "Nee 32-bit value assign pannirukka, output 2-bit nu solrathu logic violation!"
