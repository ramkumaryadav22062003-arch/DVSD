`timescale 1ns / 1ps
module que6(
    input clk,rst,coin5,coin10,
    output reg dsp);
     parameter S0 = 2'b00,S5 = 2'b01,S10 = 2'b10,DISPENSE = 2'b11;
    reg [1:0] state, next_state;
    always @(posedge clk or negedge rst) begin // State register
        if (!rst)
            state <= S0;
        else
            state <= next_state;
    end
    always @(*) begin                          // Next-state logic
        next_state = state;
        case (state)
            S0: begin
                if (coin5)   next_state = S5;
                else if (coin10) next_state = S10;
            end
            S5: begin
                if (coin10)   next_state = DISPENSE;
                else if (coin5)  next_state = S10;
            end
            S10: begin
                if (coin5)    next_state = DISPENSE;
            end
            DISPENSE: begin   next_state = S0;  end
            default:
                next_state = S0;
        endcase
    end
    always @(*) begin                           
        dsp = 1'b0;
        if (state == DISPENSE)
            dsp = 1'b1;
    end
endmodule