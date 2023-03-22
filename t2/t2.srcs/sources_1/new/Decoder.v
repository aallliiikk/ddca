`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2023 16:55:22
// Design Name: 
// Module Name: Decoder
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


module Decoder(
    input [4:0] s,
    output reg [6:0] D
    );
    
    always @ (*)
        begin
            D[0] <= ((s[3] && s[0]) && ( s[2] ^ s[1])) || ( !s[3] && !s[2] && !s[1] && s[0]) || (!s[3] && s[2] && !s[1] && !s[0]);
            D[1] <= ((!s[3] && s[2])&&(s[1]||s[0]))||(s[3]&&((!s[2]&&s[1]&&s[0])||(s[2]&&!s[1]&&!s[0])||(s2&&s[1]&&!s[0])||
        end
        
endmodule
