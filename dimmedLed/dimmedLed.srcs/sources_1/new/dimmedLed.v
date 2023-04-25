`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2023 02:20:34 PM
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
    output [15:0] led,
    input [3:0] sw,
    input clk
    );
    
    reg reset;
    
    always @ (sw)
        reset <= 1;
    
    wire [3:0] state_p,state_n;
    
    always @ (state_p)
        reset <= 0;
    
    wire divclk;
    
    clk_div divider (clk,reset,divclk);
    
    
    ledStateRegister reg1 (state_p,state_n,divclk,reset);
    
    ledNextStateLogic NSL (state_n,state_p,sw);
    
    
    Decoder4to16 outputLogic (state_n,led);
    
    
endmodule
