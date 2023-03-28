`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2023 07:44:04 PM
// Design Name: 
// Module Name: 4to2Mux
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


module Mux4to2(
    input [15:0] sw,
    output [0:0] led
    );
    
    wire mux1Out,mux2Out;
    
    Mux2to1 mux1(mux1Out,sw[0],sw[1],sw[14]);
    
    Mux2to1 mux2(mux2Out,sw[2],sw[3],sw[14]);
    
    Mux2to1 mux3(led[0],mux1Out,mux2Out,sw[15]);
    
endmodule
