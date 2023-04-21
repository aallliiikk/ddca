`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2023 04:47:17 PM
// Design Name: 
// Module Name: FiniteStateMachine
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


module FiniteStateMachine(
    input clk,
    input left,
    input right,
    input reset,
    
    output [2:0] ledLeft,
    output [2:0] ledRight
    );
    
    wire clk_en;
    
    clk_div clkDiv (clk,reset,clk_en);
    
    wire [2:0] state_n, state_p;
    
    NextStateLogic m1 (left,right,state_p,state_n);
    
    StateRegister m2 (reset,clk_en,state_n,state_p);
    
    OutputLogic m3 (state_p,ledLeft,ledRight);
    
endmodule
