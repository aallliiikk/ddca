`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2023 05:12:56 PM
// Design Name: 
// Module Name: Adder32
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Adder32(
    input cI,
    input[31:0] A,
    input[31:0] B,
    output[31:0] s
     );

     wire c1, c2, c3, c4, c5, c6, c7 ,c8;

     FourBitAdder bitone(A[3:0], B[3:0], cI, s[3:0], c1);
     FourBitAdder bittwo(A[7:4], B[7:4], c1, s[7:4], c2);
     FourBitAdder bitthree(A[11:8], B[11:8], c2, s[11:8], c3);
     FourBitAdder bitfour(A[15:12], B[15:12], c3, s[15:12], c4);
     FourBitAdder bitfive(A[19:16], B[19:16], c4, s[19:16], c5);
     FourBitAdder bitsix(A[23:20], B[23:20], c5, s[23:20], c6);
     FourBitAdder bitseven(A[27:24], B[27:24], c6, s[27:24], c7);
     FourBitAdder biteight(A[31:28], B[31:28], c7, s[31:28], c8);

endmodule