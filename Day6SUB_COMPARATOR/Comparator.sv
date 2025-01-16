`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 00:53:40
// Design Name: 
// Module Name: Comparator
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


module Comparator (
    input  logic [3:0] A,  // First 4-bit input
    input  logic [3:0] B,  // Second 4-bit input
    output logic       A_greater_B,  // A greater than B
    output logic       A_equal_B,  // A equal to B
    output logic       A_lesser_B   // A less than B
);

// Compare A and B
always_comb begin
    if (A > B) begin
        A_greater_B = 1'b1;
        A_equal_B = 1'b0;
        A_lesser_B = 1'b0;
    end
    else if (A == B) begin
        A_greater_B = 1'b0;
        A_equal_B = 1'b1;
        A_lesser_B = 1'b0;
    end
    else begin // A < B
        A_greater_B = 1'b0;
        A_equal_B = 1'b0;
        A_lesser_B = 1'b1;
    end
end

endmodule
