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


module Alu(
    input [31:0] A,
    input [31:0] B,
    input [3:0] AluOp,
    output reg [31:0]Out,
    output reg flag
    );
    
    wire [31:0]logicOut,arithOut;
    
    reg [31:0] preOut;
    
    Logic LogicPart(A,B,AluOp,logicOut);
    Arithmetic ArithmeticPart(A,B,AluOp,arithOut);
    
    always @(*) begin
        case(AluOp[2])
        1'b1:preOut <= logicOut;
        1'b0:preOut <= arithOut;
        endcase
        
        Out <= preOut;
        flag <= &(~preOut);
    end
    
    
endmodule