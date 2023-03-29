`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 17:10:39
// Design Name: 
// Module Name: FourBitAdder
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


module FourBitAdder(
input[3:0] A,
input[3:0] B,
output[4:0] s
    );
    
    wire c1, c2, c3;
    
    FullAdder bitone(A[0], B[0], 1'b0, s[0], c1);
    FullAdder bittwo(A[1], B[1], c1, s[1], c2);
    FullAdder bitthree(A[2], B[2], c2, s[2], c3);
    FullAdder bitfour(A[3], B[3], c3, s[3], s[4]);
    
endmodule
