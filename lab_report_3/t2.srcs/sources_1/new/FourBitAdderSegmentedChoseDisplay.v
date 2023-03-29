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


module FourBitAdderSegmentedChoseDisplay(
    input[3:0] a,
    input[3:0] b,
    
    input[1:0] N, //to choose which display is on
    
    output[6:0] D,
    output[3:0] AN,
    output overflow
    );
    
    nand(AN[0],!N[0],!N[1]);
    nand(AN[1],N[0],!N[1]);
    nand(AN[2],!N[0],N[1]);
    nand(AN[3],N[0],N[1]);
    
    FourBitAdderSegmented display (a,b,D,overflow);
        
endmodule
