`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2025 00:42:03
// Design Name: 
// Module Name: BidirectionalShiftregister_tb
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


module BidirectionalShiftregister_tb(
    );
    logic clk,reset,direction,shift;
    logic data_in;
    logic [3:0]data_out;
    //instantiate
    Bidirectionalshiftregister uut(
    .clk(clk),
    .reset(reset),
    .data_in(data_in),
    .data_out(data_out),
    .direction(direction),
    .shift(shift)
    );
     always #10 clk = ~clk;
    
    initial begin
    clk=0; 
    reset=1; shift=0; direction=0;data_in=0;
    #20 reset=0; 
    data_out=4'b1011;
    #20 shift=1; direction=1; data_in = 0;   //Expect: 1011 -> 0110 left
    #20 shift=1;  data_in=1;    // Expect: 0110 -> 1101
    #20 shift=1;  data_in=0;  // Expect: 1101 -> 1010
    
    #20 shift=1; direction=0; data_in=0;  // Expect: 1010 -> 0101  right
    #20 shift=1;  data_in=1;   // Expect: 0101 -> 1010
    #20 shift=1;  data_in=0;   // Expect: 1010 -> 0101
    
    #40 $finish;
        end
        
    initial begin
     $monitor("Time=%0t | Reset=%b | Shift=%b | Dir=%b | Serial_in=%b | q_out=%b",
                 $time, reset, shift, direction, data_in, data_out);
    
    end
    
endmodule
