`timescale 1ns / 1ps
module tb_que2();
    reg [2:0]a1,b1;
    reg clk;
    wire [2:0]a,b;
    que2 uut(a1,b1,clk,a,b);
    initial begin
    clk=1;
    forever #5 clk=~clk;
    end
    initial begin
    a1=3'b100;b1=3'b101;
    #10    
    a1=3'b111;b1=3'b001;
    #10
    a1=3'b110;b1=3'b000;
    #10
    $finish();
    end
endmodule
