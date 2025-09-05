And gate With Input tilt
Answer:
 module top_module (
    input in1,
    input in2,
    output out);
    and g1(out,in1,~in2);
endmodule

