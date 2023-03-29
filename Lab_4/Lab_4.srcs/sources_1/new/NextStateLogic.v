`timescale 1ns / 1ps

module NextStateLogic(
    input left,
    input right,
    input [2:0] state_p,
    
    output reg [2:0] state_n
    );
    
    always @ (*) begin
        case(state_p)
            3'b000 : begin
                        if(left) begin
                            state_n <= 3'b001;
                            end
                        if(right &&  !left) begin
                            state_n <= 3'b100;
                            end
                        end
                        
            3'b001 : state_n <= 3'b010;
            3'b010 : state_n <= 3'b011;
            3'b011 : state_n <= 3'b000;
            3'b100 : state_n <= 3'b101;
            3'b101 : state_n <= 3'b110;
            3'b110 : state_n <= 3'b000;
            
        endcase
     end
    
endmodule
