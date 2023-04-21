`timescale 1ns / 1ps

module OutputLogic(
    input [2:0] state,
    
    output reg [2:0] ledLeft,
    output reg [2:0] ledRight
    );
    
    always @ (state) begin
        
        case(state)
            3'b000 : begin
                        ledLeft <= 3'b000;
                        ledRight <= 3'b000;
                        end
            3'b001 : begin
                        ledLeft <= 3'b001;
                        ledRight <= 3'b000;
                        end
            3'b010 : begin
                        ledLeft <= 3'b011;
                        ledRight <= 3'b000;
                        end
            3'b011 : begin
                        ledLeft <= 3'b111;
                        ledRight <= 3'b000;
                        end
            3'b100 : begin
                        ledLeft <= 3'b000;
                        ledRight <= 3'b001;
                        end
                        
            3'b101 : begin
                        ledLeft <= 3'b000;
                        ledRight <= 3'b011;
                        end
            3'b110 : begin
                        ledLeft <= 3'b000;
                        ledRight <= 3'b111;
                        end
                        
            default : begin
                        ledLeft <= 3'b000;
                        ledRight <= 3'b000;
                        end
        endcase
        
        end

endmodule