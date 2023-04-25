`timescale 1ns / 1ps


module clk_div(input clk, input rst, output clk_en,output led);
reg [24:0] clk_count;
reg [20:0] clk_led;
always @ (posedge clk)
// posedge defines a rising edge (transition from 0 to 1)
begin
 if (rst)begin
 clk_count <= 0;
 clk_led <= 0;
 end
 else begin
 clk_led <= clk_led + 1;
 clk_count <= clk_count + 1;
 end
end
assign clk_en = &clk_count;
assign led = &clk_led;
endmodule