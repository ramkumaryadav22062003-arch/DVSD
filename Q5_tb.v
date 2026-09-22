`timescale 1ns / 1ps
module tb_que5();
reg clk,sensor,door_full_open,door_full_closed,rst_n;
wire [1:0]state;
que5 uut(clk,sensor,door_full_open,door_full_closed,rst_n,state);
initial begin clk=1; forever #5 clk=~clk; end
initial begin 
sensor=0;rst_n=0;door_full_open=0;door_full_closed=0;
#10
rst_n=1;
#10
sensor=1;
#10
door_full_open=1;
#10
sensor=0;
#10
door_full_closed=1;
#10
$finish();
end    
endmodule
