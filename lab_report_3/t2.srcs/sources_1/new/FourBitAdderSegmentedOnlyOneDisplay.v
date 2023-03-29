`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2023 10:56:59 PM
// Design Name: 
// Module Name: FourBitAdderSegmentedChoseDisplay
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


module FourBitAdderSegmentedOnlyOneDisplay(
    input[3:0] a,
    input[3:0] b,
    
    output[6:0] D,
    output[3:0] AN,
    output overflow
    );
    
    assign AN[0] = 0;
    assign AN[1] = 1;
    assign AN[2] = 1;
    assign AN[3] = 1;
    
    FourBitAdderSegmented display (a,b,D,overflow);
        
endmodule