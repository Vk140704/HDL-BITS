Create a module that implements a NOT gate.
  Use an assign statement. The assign statement will continuously drive the inverse of in onto wire out.
    ANSWER
    module top_module( input in, output reg out );
    assign out=!in;
endmodule
//
  module top_module(
	input in,
	output out
);
	
	assign out = ~in;
	
endmodule
