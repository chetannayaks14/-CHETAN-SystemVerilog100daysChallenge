`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 15:42:19
// Design Name: 
// Module Name: MOD10
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


module mod10_bidirectional_counter (
    input logic clk,        // Clock signal
    input logic reset,      // Active-high reset
    input logic up_down,    // Mode control: 1 for UP, 0 for DOWN
    output logic [3:0] count // 4-bit counter output
);

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            count <= 4'b0000;  // Reset to 0
        else if (up_down) begin
            // Count UP (Reset to 0 after 9)
            if (count == 4'b1001)
                count <= 4'b0000;
            else
                count <= count + 1;
        end else begin
            // Count DOWN (Reset to 9 after 0)
            if (count == 4'b0000)
                count <= 4'b1001;
            else
                count <= count - 1;
        end
    end

endmodule

