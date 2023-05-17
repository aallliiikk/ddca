`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2023 16:12:01
// Design Name: 
// Module Name: FSM_test
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


module FSM_test();
    reg clk;
    
    reg reset, left, right;
    
    wire[2:0] state_p;
    wire[2:0] state_n;
    
    reg[10:0] vec_cnt;
    
    reg[1:0] testvec [0:2];
    
    always				
    begin
        clk = 1; #50;		// clk is 1 for 50 ns
        clk = 0; #50;		// clk is 0 for 50 ns
    end
    
    initial 
    begin 
        $readmemb("testvec.txt", testvec);
                       
        vec_cnt = 0;

        left = 1'b0;
        right = 1'b0;
        reset = 1'b1;
        #20;
        reset = 1'b0;

    end
    
    always @ (posedge clk)
    begin
        {left, right} = testvec[vec_cnt];
        #1;
        
        if (state_n===3'b000)
            begin
            vec_cnt = vec_cnt + 1;
            #20;
            reset = 1'b1;
            #20;
            reset = 1'b0;
            #20;
            if (vec_cnt === 2)
                begin
                #20;
                $finish;
            end
        end
    end
    
    
    FiniteStateMachine FSM(clk, left, right, reset, state_p, state_n);

endmodule
