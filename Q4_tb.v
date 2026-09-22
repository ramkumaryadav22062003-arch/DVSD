`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 02:44:50 PM
// Design Name: 
// Module Name: Q4_tb
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


module Q4_tb();
    reg occupancy, is_dark, manual_on;
    reg clk,rst;
    wire light_on, light_latch;

    Q4 dut(occupancy,is_dark,manual_on,clk,rst,light_on,light_latch);

    initial clk = 0; 
    initial rst = 0;
    always #5 clk = ~clk;

    initial begin
        occupancy = 0; is_dark = 0; manual_on = 0;

        #10 occupancy = 0; is_dark = 1; manual_on = 0;
        #10 occupancy = 1; is_dark = 0; manual_on = 0;
        #10 occupancy = 0; is_dark = 0; manual_on = 1;
        #10 occupancy = 1; is_dark = 1; manual_on = 0;
        #10 occupancy = 1; is_dark = 0; manual_on = 1;
        #10 occupancy = 0; is_dark = 1; manual_on = 0;
        #10 occupancy = 0; is_dark = 1; manual_on = 0;
        #10 $finish();
    end
endmodule