`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2025 00:21:58
// Design Name: 
// Module Name: TrafficControl_tb
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


module TrafficControl_tb;

    // Declare the signals that will connect to the module inputs and outputs
    logic [3:0] timing_state;
    logic [1:0] north_south_light;
    logic [1:0] east_west_light;
    logic pedestrian_walk;

    // Instantiate the Traffic Light Controller
    TrafficControl dut (
        .timing_state(timing_state),
        .north_south_light(north_south_light),
        .east_west_light(east_west_light),
        .pedestrian_walk(pedestrian_walk)
    );

    // Test procedure
    initial begin
        // Initialize timing_state to 0
        timing_state = 4'd0;

        // Monitor the changes in the outputs
        $monitor("Time=%0t: timing_state=%d, North-South=%b, East-West=%b, Pedestrian=%b", $time, timing_state, north_south_light, east_west_light, pedestrian_walk);

        // Test all timing states from 0 to 10
        for (int i = 0; i <= 10; i++) begin
            timing_state = i;
            #10; // Wait for 10 time units to allow the combinational logic to settle
        end

        // Test an out-of-range timing state to check the default behavior
        timing_state = 4'd15; // This should go to the default case
        #10;

        // Finish the simulation
        $finish;
    end

endmodule