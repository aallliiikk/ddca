`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2023 01:34:37 PM
// Design Name: 
// Module Name: blinkerNextStateLogic
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


module blinkerNextStateLogic(
    output [3:0] state_n,
    input [3:0] state_p,
    input [3:0] ledState
    );
    
    always @ (state_p) begin
        case(state_p)
            4'b0000: state_n <= 4'b0001;
            4'b0001: if(ledState == 00
        endcase
    end
    
endmodule
