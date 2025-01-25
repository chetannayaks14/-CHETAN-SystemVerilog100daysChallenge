`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2025 04:53:08
// Design Name: 
// Module Name: EvenParity_tb
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


module EvenParity_tb;

    // DUT signals
    logic [3:0] data;
    logic       parity_out;

    // Instantiate the Device Under Test (DUT)
    EvenParity dut (
        .data       (data),
        .parity_out (parity_out)
    );

    initial begin
        // Monitor for changes in inputs and outputs
        $monitor("Time=%0t, Data=%b, Parity=%b", $time, data, parity_out);

        // Test cases
        data = 4'b0000; #10;  // 0 ones -> parity should be 0
        data = 4'b0001; #10;  // 1 one  -> parity should be 1
        data = 4'b0011; #10;  // 2 ones -> parity should be 0
        data = 4'b0111; #10;  // 3 ones -> parity should be 1
        data = 4'b1111; #10;  // 4 ones -> parity should be 0

        // Finish simulation
        $finish;
    end

endmodule
