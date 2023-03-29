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
    input [3:0] s,
    output reg [6:0] D
    );
    
    always @ (*)
        begin
        
            D[0] <= !((!s[1]&&!s[3]) || s[2] || (s[1]&&s[3]) || s[0]);
            
            D[1] <= !(!s[1] || (!s[2] && !s[3]) || (s[2] && s[3]));
            
            D[2] <= !(!s[2] || s[3] || s[1]);
            
            D[3] <= !((!s[1] && !s[3]) || (!s[1] && s[2]) || (s[1] && !s[2] && s[3]) || (s[2] && !s[3]) || s[0]);
            
            D[4] <= !((!s[1] && !s[3]) || (s[2] && !s[3]));
            
            D[5] <= !((!s[2] && !s[3]) || (s[1] && !s[2]) || (s[1] && !s[3]) || s[0]);
            
            D[6] <= !((!s[1] && s[2]) || (s[1] && !s[2]) || s[0] || (s[1] && !s[3]));

        end
        
endmodule
