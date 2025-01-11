`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2025 01:04:16
// Design Name: 
// Module Name: BasicGatesday1
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


module BasicGatesday1(
 input logic a, b,
 output logic OR, AND, NOR, NAND, NOT, XOR, XNOR, BUFFER
  );
  
 
  assign OR = a | b;
  assign AND = a & b;
  assign NOR = ~(a | b);
  assign NAND = ~(a & b);
  assign NOT = ~(a); //only single input is used.
  assign XOR = a ^ b;
  assign XNOR = ~(a ^ b);
  assign BUFFER = a; //only single inpout is used
  
 
endmodule
