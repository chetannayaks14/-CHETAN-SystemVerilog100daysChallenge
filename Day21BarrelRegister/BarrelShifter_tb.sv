`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2025 18:49:33
// Design Name: 
// Module Name: BarrelShifter_tb
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


module BarrelShifter_tb;
    logic [7:0] in_data;
    logic [2:0] shift;
    logic dir;
    logic [7:0] out_data;

    BarrelShifter uut (
        .in_data(in_data),
        .shift(shift),
        .dir(dir),
        .out_data(out_data)
    );

    initial begin
        $monitor("Time=%0t | Input=%b | Shift=%d | Dir=%b | Output=%b", 
                 $time, in_data, shift, dir, out_data);

        // Test Case 1: No Shift
        in_data = 8'b11010110; shift = 3'b000; dir = 0; #10;
        
        // Test Case 2: Left Shift by 1
        in_data = 8'b11010110; shift = 3'b001; dir = 0; #10;
        
        // Test Case 3: Left Shift by 3
        in_data = 8'b11010110; shift = 3'b011; dir = 0; #10;
        
        // Test Case 4: Right Shift by 1
        in_data = 8'b11010110; shift = 3'b001; dir = 1; #10;
        
        // Test Case 5: Right Shift by 4
        in_data = 8'b11010110; shift = 3'b100; dir = 1; #10;

        $stop;
    end
endmodule

