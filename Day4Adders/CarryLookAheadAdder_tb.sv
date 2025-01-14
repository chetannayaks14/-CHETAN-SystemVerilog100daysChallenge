`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2025 19:39:49
// Design Name: 
// Module Name: CarryLookAheadAdder_tb
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


module CarryLookAheadAdder_tb;

    logic [3:0] a, b;
    logic       cin;
    logic [3:0] sum;
    logic       cout;

    // Instantiate the Carry Lookahead Adder
    CarryLookAheadAdder DUT (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // Test sequence
    initial begin
        // Test case 1: 1011 + 0110 
        a = 4'b1011; b = 4'b0110; cin = 1'b0;
        #10;
        $display("Test Case 1: %b + %b + %b = %b, Cout = %b", a, b, cin, sum, cout);

        // Test case 2: 1111 + 0001
        a = 4'b1111; b = 4'b0001; cin = 1'b0;
        #10;
        $display("Test Case 2: %b + %b + %b = %b, Cout = %b", a, b, cin, sum, cout);

        // Test case 3: 0000 + 0000 with carry in
        a = 4'b0000; b = 4'b0000; cin = 1'b1;
        #10;
        $display("Test Case 3: %b + %b + %b = %b, Cout = %b", a, b, cin, sum, cout);

        // Test case 4: 1111 + 1111 with carry in
        a = 4'b1111; b = 4'b1111; cin = 1'b1;
        #10;
        $display("Test Case 4: %b + %b + %b = %b, Cout = %b", a, b, cin, sum, cout);

        // End simulation
        $finish;
    end

endmodule
