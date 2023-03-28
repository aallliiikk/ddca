`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2023 07:44:04 PM
// Design Name: 
// Module Name: 2to1Mux
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


module Mux2to1(
    output Q,
    input A,
    input B,
    input q
    );
    
    wire not_q;
    
    not(not_q,q);
    
    wire A_out,B_out;
    
    and(A_out,A,not_q);
    and(B_out,B,q);
    
    or(Q,A_out,B_out);
    
endmodule
