`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2023 04:51:40 PM
// Design Name: 
// Module Name: Logic
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


module Logic(
    input [31:0] A,
    input [31:0] B,
    input [3:0] AluOp,
    output reg [31:0] Out
    );
    
    wire[31:0] And,Or,Nor,Xor;
    
    assign And = A & B;
    
    assign Or = A | B;
    
    assign Nor = ~Or;
    
    assign Xor = A ^ B;
    
    always @ (*) begin
        case(AluOp)
        4'b0100: Out = And;
        4'b0101: Out = Or;
        4'b0110: Out = Xor;
        4'b0111: Out = Nor;
        endcase
    end 
    
endmodule
