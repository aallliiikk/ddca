`timescale 1ns / 1ps
module FullAdder(
    input a,
    input b,
    input ci,
    output s,
    output co
     );
     wire y1, y2, y3, y4;

     xor abxor(y1, a, b);
     and aband(y2, a, b);

     and abcxor(y3, y1, ci);

     or cout(co, y3, y2);

     xor sout(s, y1, ci);


endmodule