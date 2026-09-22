`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 12:19:45 PM
// Design Name: 
// Module Name: Q3_tb
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


module Q3_tb();
reg ig,sb,clk;
wire buzz;
Q3 dut(ig,sb,clk,buzz);
initial clk =0;
always #5 clk = ~clk;
initial begin
ig = 0; sb = 0;
#10 ig = 0; sb = 1;
#10 ig = 1; sb = 0;
#70
#10 ig = 0; sb = 0;
#10 ig = 1; sb = 1;
#10 ig = 0; sb = 0;
#10 $finish();
end
endmodule
