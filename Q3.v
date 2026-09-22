`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 11:45:42 AM
// Design Name: 
// Module Name: Q3
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

/*
module Q3(
input ig,sb,
output reg buzz
);
integer count; // ig = ignission, sb = seatbelt buzz has to ring when count is 5 
always @(*) begin
if (ig == 1 && sb == 0)
   for(count = 0; count < 6; count = count + 1) begin
   if (count == 3'd5) begin
   buzz = 1'b1;
   end
    end
end
endmodule
*/
module Q3(
input ig,sb,clk,
output reg buzz
);
reg [2:0]count; // ig = ignission, sb = seatbelt buzz has to ring when count is 5 
always @(*) begin
if (ig == 1 && sb == 0) begin
   if (count < 5) begin
   count = count +1;
   end
   else buzz = 1;
   end
else begin 
   buzz = 0;
   end
end
endmodule
