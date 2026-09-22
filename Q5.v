`timescale 1ns / 1ps

module que5(
    input clk,sensor,door_full_open,door_full_closed,rst_n,
    output reg [1:0]state
     ); 
     localparam IDLE=2'b00,OPENING=2'b01,OPEN=2'b10,CLOSING=2'b11;
     always@(posedge clk or negedge rst_n) begin
   
     if(!rst_n) state<=IDLE;
     else begin 
       case (state)
       IDLE: if(sensor) state<=OPENING;
       OPENING: if(door_full_open) state<=OPEN;
       OPEN: if(~sensor) state<= CLOSING;
       CLOSING:if(door_full_closed) state<=IDLE;
       endcase
       end 
     end         
endmodule
