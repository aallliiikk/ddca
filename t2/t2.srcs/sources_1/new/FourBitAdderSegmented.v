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
input[3:0] a,
input[3:0] b,
//output[4:0] S,
output[6:0] D,
output reg overflow
    );
    wire [4:0] S;
    FourBitAdder adder(a, b, S);
    Decoder decoder(S[3:0], D);
    always @ (*)
        begin
            overflow <= S[4];
        end
    
endmodule
