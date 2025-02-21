`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2025 03:22:14
// Design Name: 
// Module Name: PIPO_tb
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


module PIPO_tb;
logic clk,reset,load;
logic [3:0] data_in;
logic [3:0] parallel_out;
PIPO uut(
.clk(clk),
.reset(reset),
.load(load),
.data_in(data_in),
.parallel_out(parallel_out)
);
//clock generation
always #10 clk = ~clk;
initial begin
clk=0;
reset=1;
load=0;
data_in=4'b0000;
#20 reset=0;
#20 load=1; data_in=4'b0001;  //load  data
#20 load=0; //hold value
#20 load=1; data_in=4'b0010; //load new data
#20 load=0;  //hold data

#20 $finish;
end
initial begin
$monitor("Time=%0t | Reset=%b | Load=%b | data_in=%b | parallel_out=%b",
                 $time, reset, load, data_in, parallel_out);
end

endmodule
