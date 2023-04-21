`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2023 01:28:54 PM
// Design Name: 
// Module Name: ledOutputLogic
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


module ledOutputLogic(
    output led,
    input [3:0] state,
    input clk,
    input reset
    );
    
    wire [3:0] state_p,state_n;
    
    ledStateRegister(state_p,state_n,clk,reset);
    
    blinkerNextStateLogic(state_n,state_p,state);
    
    blinkerOutputLogic(led,state_n);
    
    
    
endmodule
