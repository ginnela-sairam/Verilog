`timescale 1ns/1ns
`include "full_adder.v"


module full_adder_tb;
reg a,b,c;
wire x,y;


full_adder uut ( x,y,a,b,c);



initial begin 

    $display("Time\t a b c | x y");
    $monitor("%g\t%b %b %b | %b %b", $time, a,b,c,x,y);


    a=0 ; b =0 ; c= 0; #10;
    a=0 ; b =0 ; c= 1; #10;
    a=0 ; b =1 ; c= 0; #10;
    a=0 ; b =1 ; c= 1; #10;

    a=1 ; b =0 ; c= 0; #10;
    a=1 ; b =0 ; c= 1; #10;
    a=1 ; b =1 ; c= 0; #10;
    a=1 ; b =1 ; c= 1; #10;

    $finish;
    
    end

    initial begin

    $dumpfile("full_adder.vcd");
    $dumpvars(0,full_adder_tb);


  end

endmodule