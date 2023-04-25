`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2023 12:55:41 PM
// Design Name: 
// Module Name: dimmedLed
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


module dimmedLed(
    output ledOut,
    
    input ledIn,
    input clk,
    input reset
    );
    
    wire [4:0] state_p,state_n;
    
    ledStateRegister(state_p,state_n,clk,reset);
    
    ledNextStateLogic(state_n,state_p,ledIn);
    
    ledOutputLogic(ledOut,state_n,reset);
    
    
    
endmodule
