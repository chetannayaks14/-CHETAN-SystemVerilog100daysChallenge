`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2025 14:08:43
// Design Name: 
// Module Name: RippleCarryAdder_tb
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
module RippleCarryAdder_t;

    // Test vectors
    logic [3:0] a, b;
    logic       cin;
    logic [4:0] sum;
    logic       c1, c2, c3; // Carry values

    // Instantiate the Ripple Carry Adder
    RippleCarryAdder DUT (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum)
    );

    // Assign internal carries for display
    assign c1 = DUT.c1;
    assign c2 = DUT.c2;
    assign c3 = DUT.c3;

    // Test sequence
    initial begin
        // Test case 1: 1011 + 0110 
        a = 4'b1011; b = 4'b0110; cin = 1'b0;
        #10; // wait for 10 time units to see the result
        $display("Test Case 1: %b + %b + %b = %b, Carries: C1=%b, C2=%b, C3=%b", a, b, cin, sum, c1, c2, c3);

        // Test case 2: 1111 + 0001
        a = 4'b1111; b = 4'b0001; cin = 1'b0;
        #10;
        $display("Test Case 2: %b + %b + %b = %b, Carries: C1=%b, C2=%b, C3=%b", a, b, cin, sum, c1, c2, c3);

        // Test case 3: 0000 + 0000 with carry in
        a = 4'b0000; b = 4'b0000; cin = 1'b1;
        #10;
        $display("Test Case 3: %b + %b + %b = %b, Carries: C1=%b, C2=%b, C3=%b", a, b, cin, sum, c1, c2, c3);

        // Test case 4: 1111 + 1111 with carry in
        a = 4'b1111; b = 4'b1111; cin = 1'b1;
        #10;
        $display("Test Case 4: %b + %b + %b = %b, Carries: C1=%b, C2=%b, C3=%b", a, b, cin, sum, c1, c2, c3);

        // End simulation
        $finish;
    end

endmodule