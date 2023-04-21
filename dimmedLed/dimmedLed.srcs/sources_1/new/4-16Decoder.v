`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2023 12:24:56 AM
// Design Name: 
// Module Name: 4-16Decoder
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


module Decoder4to16(
    input [3:0] In,
    output [15:0] Out
    );
    
    and(Out[0],!In); //led on state
    and(Out[1],!In[0],!In[1],!In[2],In[3]);
    and(Out[2],!In[0],!In[1],In[2],!In[3]);
    and(Out[3],!In[0],!In[1],In[2],In[3]);
    and(Out[4],!In[0],In[1],!In[2],!In[3]);
    and(Out[5],!In[0],In[1],!In[2],In[3]);
    and(Out[6],!In[0],In[1],In[2],!In[3]);
    and(Out[7],!In[0],In[1],In[2],In[3]);
    and(Out[8],In[0],!In[1],!In[2],!In[3]);
    and(Out[9],In[0],!In[1],!In[2],In[3]);
    and(Out[10],In[0],!In[1],In[2],!In[3]);
    and(Out[11],In[0],!In[1],In[2],In[3]);
    and(Out[12],In[0],In[1],!In[2],!In[3]);
    and(Out[13],In[0],In[1],!In[2],In[3]);
    and(Out[14],In[0],In[1],In[2],!In[3]);
    and(Out[15],In[0],In[1],In[2],In[3]);
    
endmodule
