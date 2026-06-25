`timescale 1ns/1ns
`include "Gas_detection_at_night.v"

// test bench for Gas_detection_at_night

module Gas_detection_at_night_tb; 

// Inputs
reg gas_detection, day_night;

// Outputs
wire alarm;

Gas_detection_at_night uut (gas_detection, day_night, alarm);


// Stimulus
initial begin

$display("Time\tgas_detection day_night| alarm");
    $monitor("%g\t%b %b | %b", $time, gas_detection, day_night, alarm);

    //test cases
    
    gas_detection = 0; day_night = 0; #10;
    gas_detection = 1; day_night = 0; #10;
     gas_detection = 0; day_night = 1; #10;
      gas_detection = 1; day_night = 1; #10;

      $finish;
    
end


// Generate waveform file for viewing in GTKWave
  initial begin
    $dumpfile("Gas_detection_at_night.vcd");
    $dumpvars(0, Gas_detection_at_night_tb);
  end


endmodule
