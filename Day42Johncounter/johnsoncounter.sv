`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2025 00:32:02
// Design Name: 
// Module Name: johnsoncounter
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


module johnsoncounter(
 input logic clk,        // Clock input
    input logic reset,      // Active-high reset
    output logic [3:0] q    // 4-bit Johnson Counter output
);

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            q <= 4'b0000;  // Initialize to zero
        else
            q <= {~q[0], q[3:1]};  // Shift left with inverted feedback
    end
endmodule
