`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2025 00:30:02
// Design Name: 
// Module Name: Upcounter_tb
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


module Upcounter_tb;
logic clk, reset;
logic [3:0]count;
UpCounter uut(
.clk(clk),
.reset(reset),
.count(count)
);
always #10 clk = ~clk;
initial begin
    clk=0; reset =1;
    #10 reset =0;
    #100 $finish;
end
initial begin
        $monitor("Time=%0t | Reset=%b | Count=%b",
                 $time, reset, count);
    end
endmodule
