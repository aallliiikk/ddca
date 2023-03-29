`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2023 17:25:24
// Design Name: 
// Module Name: FourBitAdderSegmented
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


module FourBitAdderSegmented(
input[3:0] a1,
input[3:0] b1,
//output[4:0] S,
output[6:0] D1,
output overflow1
    );
    wire [4:0] S1;
    FourBitAdder adder(a1, b1, S1);
    Decoder decoder(S1[3:0], D1);
    
    assign overflow1 = S1[4];
    
endmodule
