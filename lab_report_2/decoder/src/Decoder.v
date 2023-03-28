`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2023 07:03:35 PM
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
    input [1:0] sw,
    output [3:0]led
    );
    
    wire not_sw0,not_sw1;
    
    not(not_sw1,sw[1]);
    not(not_sw0,sw[0]);
    
    and(led[0],not_sw1,not_sw0);
    and(led[1],not_sw1,sw[0]);
    and(led[2],sw[1],not_sw0);
    and(led[3],sw[1],sw[0]);
    
endmodule
