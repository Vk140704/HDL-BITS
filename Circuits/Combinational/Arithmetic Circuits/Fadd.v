/*Create a full adder. A full adder adds three bits (including carry-in) and produces a sum and carry-out.*/
module top_module( 
    input a, b, cin,
    output cout,sum);
    //output reg cout, sum );
   /* always@(*)begin
        case({a,b,cin})
            3'b000 :begin sum=0;cout=0;end
            3'b001 :begin sum=1;cout=0;end
            3'b010 :begin sum=1;cout=0;end
            3'b011 :begin sum=0;cout=1;end 
            3'b100 :begin sum=1;cout=0;end
            3'b101 :begin sum=0;cout=1;end
            3'b110 :begin sum=0;cout=1;end
            3'b111 :begin sum=1;cout=1;end
            default:begin sum=0;cout=0;end
        endcase
    end    
*/ 
   // assign cout = ((a&b)|(b&cin)|(cin&a));
    //assign sum =(a^b^cin);
    wire w1,w2,w3,x1;
    and(w1,a,b);
    and(w2,b,cin);
    and(w3,cin,a);
    or(cout,w1,w2,w3); 
    xor(x1,a,b);
    xor(sum,x1,cin);
    
    
endmodule
