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


module Arithmetic(
    input [31:0] A,
    input [31:0] B,
    input [3:0] AluOp,
    output reg [31:0] Out
    );
    
    
    reg [31:0] Bprime;
    
    always @ (*) begin
        case(AluOp[1])
            1'b1:Bprime <= ~B;
            1'b0:Bprime <= B;
        endcase
        
        case(AluOp[3])
            1'b1: Out <= Extended;
            1'b0: Out <= AddOut;
        endcase
        
    end
    
    wire [31:0] AddOut;
    
    //Adder32 Adder(AluOp[1],A,Bprime,AddOut);
    assign AddOut = A+Bprime+AluOp[1];
    wire [31:0] Extended;
    
    assign Extended = {32{AddOut[31]}};
    
    
endmodule