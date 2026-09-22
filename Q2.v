`timescale 1ns / 1ps
module que2(
    input [2:0]a1,b1,
    input clk,
    output reg [2:0]a,b    
    );
    always@(posedge clk) begin
    a=a1;b=b1;
    a<=b;
    b<=a;    
    end
endmodule
