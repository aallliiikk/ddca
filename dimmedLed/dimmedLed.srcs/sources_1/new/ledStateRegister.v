`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2023 02:20:34 PM
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
    output reg [3:0] state_p,
    input [3:0] state_n,
    input  clk,
    input reset
    );
    
    
    always @ (posedge clk) begin
        if(reset)
            state_p <= 0;
        else
            state_p <= state_n;
    end
endmodule
