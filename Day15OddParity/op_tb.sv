`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2025 04:02:47
// Design Name: 
// Module Name: op_tb
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


module op_tb;

    parameter WIDTH = 4;               // Width of the input data
    logic [WIDTH-1:0] data_in;         // Input data
    logic parity_bit;                  // Output parity bit

    // Instantiate the odd parity generator
    Oddparity #(.WIDTH(WIDTH)) uut (
        .data_in(data_in),
        .parity_bit(parity_bit)
    );

    initial begin
        // Test cases
        $display("Time: %t | Data_in: %b | Parity_bit: %b", $time, data_in, parity_bit);

        data_in = 4'b0000; #10; 
        $display("Time: %t | Data_in: %b | Parity_bit: %b", $time, data_in, parity_bit);

        data_in = 4'b0001; #10; 
        $display("Time: %t | Data_in: %b | Parity_bit: %b", $time, data_in, parity_bit);

        data_in = 4'b1010; #10; 
        $display("Time: %t | Data_in: %b | Parity_bit: %b", $time, data_in, parity_bit);

        data_in = 4'b1111; #10; 
        $display("Time: %t | Data_in: %b | Parity_bit: %b", $time, data_in, parity_bit);

        $stop; // End simulation
    end

endmodule

