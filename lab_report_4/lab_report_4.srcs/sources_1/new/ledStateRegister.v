`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2023 01:07:11 PM
// Design Name: 
// Module Name: ledStateRegister
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


module ledStateRegister(
    output reg [3:0] state_n,
    
    input [3:0] state_p,
    input clk,
    input reset
    );
    
    always @ (posedge clk,reset) begin
        if(reset)
            state_n <= 0;
        else
            state_n <= state_p;
    end
    
endmodule
