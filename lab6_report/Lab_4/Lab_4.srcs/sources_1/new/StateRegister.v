`timescale 1ns / 1ps

module StateRegister(
    input reset,
    input clk,
    input [2:0] state_n,
    
    output reg [2:0] state_p
    );
    
    
    always @ (posedge clk, posedge reset)
    begin
        if(reset)
            state_p = 3'b000;
        else
            state_p = state_n;
    end
    
    
endmodule