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
    
    output [0:2] ledLeft,
    output [0:2] ledRight
    );
    
    wire clk_en,clk_led;
    
    clk_div clkDiv (clk,reset,clk_en,clk_led);
    
    wire [2:0] state_n, state_p;
    
    NextStateLogic m1 (left,right,state_p,state_n);
    
    StateRegister m2 (reset,clk_en,state_n,state_p);
    
    wire [2:0] L,R;
    
    OutputLogic m3 (state_p,L,R);
    
    dimmedLed L0 (ledLeft[0],L[0],clk_led,reset);
    
    dimmedLed L1 (ledLeft[1],L[1],clk_led,reset);
    
    dimmedLed L2 (ledLeft[2],L[2],clk_led,reset);
    
    dimmedLed R0 (ledRight[0],R[0],clk_led,reset);
    
    dimmedLed R1 (ledRight[1],R[1],clk_led,reset);
    
    dimmedLed R2 (ledRight[2],R[2],clk_led,reset);
    
    
endmodule
