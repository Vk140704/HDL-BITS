/*Create a one-bit wide, 2-to-1 multiplexer. When sel=0, choose a. When sel=1, choose b.
*/
Answer:
        module top_module #(parameter n=1)( 
    input [n-1:0]a,input[n-1:0]b,input sel,
    output reg [n-1:0]out ); 
   // assign out =sel?b:a;
   //assign out=(~sel&a)|(sel&b);
   /*wire ns,w1,w2;
    and(w1,ns,a);
    and(w2,sel,b);
    not(ns,sel);
    or(out,w1,w2);*/
    /*always@(*)begin
        if(sel==1)
            out=b;
        else
            out=a;
    end*/
    /*always @(*)begin
        case(sel)
		1'b0 : out =a;
        2'b1 : out =b;
            default : $dispaly("invalid sel value");
        endcase
            end*/
     integer i;
    always@(*)begin
        for 	(i=0;i<n;i=i+1)begin
            out[i]=(sel==0)?a[i]:b[i];
        end
        end
    
            endmodule
