`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2023 01:14:29 PM
// Design Name: 
// Module Name: ledNextStateLogic
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


module ledNextStateLogic(
    output reg [3:0] state_n,
    
    input [3:0] state_p,
    input LedIn
    );
    
    always @ (state_p) begin
        if(state_n == 4'b1100)
            state_n <= 0;
        else
            state_n <= state_p + 1;
    end
    
    always @ (posedge LedIn) begin
        state_n <= 4'b0001;
    end
    
    always @ (negedge LedIn) begin
        state_n <= 4'b1001;
    end
    
    
endmodule
