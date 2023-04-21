`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2023 12:42:37 PM
// Design Name: 
// Module Name: FiniteStateMachineDimmedLed
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


module FiniteStateMachineDimmedLed(
    input dimmed,
    input clk,
    input left,
    input right,
    input reset,
    
    output [0:2] ledLeft,
    output [0:2] ledRight
    );
    
    wire [2:0] L,R,
    
    FiniteStateMachine machine (clk,left,right,reset,L,R);
    
    
    
    
endmodule
