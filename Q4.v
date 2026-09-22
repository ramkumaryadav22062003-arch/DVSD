`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 02:38:05 PM
// Design Name: 
// Module Name: Q4
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

module Q4(
    input occupancy, is_dark, manual_on, clk,rst,
    output reg light_on, light_latch
);

    initial begin
        light_on    = 0;
        light_latch = 0;
    end

    always @(posedge clk or negedge rst) begin
        if (manual_on)
            light_latch <= 1'b0;
        else if (occupancy && is_dark)
            light_latch <= 1'b1;
    end

    always @(*) begin
        light_on = (occupancy && is_dark) || manual_on || light_latch;
    end

endmodule