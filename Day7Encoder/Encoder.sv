`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2025 02:37:26
// Design Name: 
// Module Name: Encoder
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


module Encoder_8to3 (
    input  logic [7:0] in, // 8 input lines
    output logic [2:0] out // 3 output lines
);

    always_comb begin
        // Default case: if no input is active, output is 000
        //out = 3'b000;
        
        // Check each input line to see which one is high
        case(1'b1)
            in[0]: out = 3'b000;
            in[1]: out = 3'b001;
            in[2]: out = 3'b010;
            in[3]: out = 3'b011;
            in[4]: out = 3'b100;
            in[5]: out = 3'b101;
            in[6]: out = 3'b110;
            in[7]: out = 3'b111;
            default: out = 3'b000; // This case should not happen with proper input
        endcase
    end

endmodule
