module Gas_detection_at_night (gas_detection,day_night,alarm);

input gas_detection,day_night;
output alarm;

assign alarm = gas_detection & day_night;
    
endmodule