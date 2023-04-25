`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2023 02:20:34 PM
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
    output [3:0] state_n,
    input [3:0] state_p,
    input [3:0] sw
    );
        
    wire [15:0] cases1;
    
    Decoder4to16 Decoder1 (state_p,cases1);
    
    
    wire [15:0] cases2;
    
    Decoder4to16 Decoder2 (sw,cases2);
    
    
    
    wire [15:1] cases3;
    
    
    and(cases3[1],cases1[0],!cases2[15]);
    and(cases3[2],cases1[1],!cases2[14]);
    and(cases3[3],cases1[2],!cases2[13]);
    and(cases3[4],cases1[3],!cases2[12]);
    and(cases3[5],cases1[4],!cases2[11]);
    and(cases3[6],cases1[5],!cases2[10]);
    and(cases3[7],cases1[6],!cases2[9]);
    and(cases3[8],cases1[7],!cases2[8]);
    and(cases3[9],cases1[8],!cases2[7]);
    and(cases3[10],cases1[9],!cases2[6]);
    and(cases3[11],cases1[10],!cases2[5]);
    and(cases3[12],cases1[11],!cases2[4]);
    and(cases3[13],cases1[12],!cases2[3]);
    and(cases3[14],cases1[13],!cases2[2]);
    and(cases3[15],cases1[14],!cases2[1]);
    
    
    
    wire [3:0] statePlusOne;
    
    wire anyCase;
    
    assign statePlusOne =  state_p + 1;
    
    or(anyCase,cases3[1],cases3[2],cases3[3],cases3[4],cases3[5],cases3[6],cases3[7],cases3[8],cases3[9],cases3[10],cases3[11],cases3[12],cases3[13],cases3[14],cases3[15]);
    
    wire zeroCase;
    
    and(zeroCase,cases1[15],!cases2[0]);
    
    and(state_n,statePlusOne, anyCase);

   
    
    
endmodule
