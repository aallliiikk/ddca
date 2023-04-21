`timescale 1ns / 1ps
module FourBitAdder(
input[3:0] A,
input[3:0] B,
input cI,
output[4:0] s,
output cO
     );

     wire c1, c2, c3;

     FullAdder bitone(A[0], B[0], cI, s[0], c1);
     FullAdder bittwo(A[1], B[1], c1, s[1], c2);
     FullAdder bitthree(A[2], B[2], c2, s[2], c3);
     FullAdder bitfour(A[3], B[3], c3, s[3], cO);

endmodule