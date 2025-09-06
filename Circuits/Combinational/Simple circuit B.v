/*Taken from 2015 midterm question 4

Circuit B can be described by the following simulation waveform: xnor circuit*/
Answer:
module top_module ( input x, input y, output z );
  //  xnor g1(z,x,y);
    assign z =x~^y;
endmodule
