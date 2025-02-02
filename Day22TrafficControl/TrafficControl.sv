`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2025 00:21:13
// Design Name: 
// Module Name: TrafficControl
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


module TrafficControl (
    input logic [3:0] timing_state,  // External timing state input to control light sequence
    output logic [1:0] north_south_light,  // 2-bit to represent Red, Green, Yellow
    output logic [1:0] east_west_light,    // Same for East-West
    output logic pedestrian_walk            // 1-bit for pedestrian walk signal
);

    // Define states for the traffic lights
    localparam RED    = 2'b00;
    localparam GREEN  = 2'b01;
    localparam YELLOW = 2'b10;

    // Combinational logic to decide light states based on timing_state
    always_comb begin
        case (timing_state)
            4'd0, 4'd1, 4'd2, 4'd3: begin
                // North-South Green for timing_state 0-3, East-West Red
                north_south_light = GREEN;
                east_west_light = RED;
                pedestrian_walk = 1'b0;
            end
            4'd4: begin
                // North-South Yellow for timing_state 4
                north_south_light = YELLOW;
                east_west_light = RED;
                pedestrian_walk = 1'b0;
            end
            4'd5, 4'd6, 4'd7, 4'd8: begin
                // East-West Green for timing_state 5-8, North-South Red
                north_south_light = RED;
                east_west_light = GREEN;
                pedestrian_walk = 1'b0;
            end
            4'd9: begin
                // East-West Yellow for timing_state 9
                north_south_light = RED;
                east_west_light = YELLOW;
                pedestrian_walk = 1'b0;
            end
            4'd10: begin
                // Pedestrian Walk for timing_state 10, all vehicle lights Red
                north_south_light = RED;
                east_west_light = RED;
                pedestrian_walk = 1'b1;
            end
            default: begin
                // Default or error state, all Red
                north_south_light = RED;
                east_west_light = RED;
                pedestrian_walk = 1'b0;
            end
        endcase
    end

endmodule
