
`timescale 10ns/1ns

module HA_D_testbench(); // no input, no output
  
  reg a, b; // always declare inputs as reg
  wire s, c; // and outputs as wire
  
  HA_D DUT (.a(a), .b(b), .s(s), .c(c));
  
  initial
  begin
    $monitor($time, "a=%b, b=%b, s=%b, c=%b", a, b, s, c);
  end
  
  initial
  begin
    $dumpvars(1, HA_D_testbench);
    #0  a=0; b=0; // at time = 0ns
    #50 a=0; b=1; // after 50ns
    #50 a=1; b=0; // after 50ns
    #50 a=1; b=1; // after 50ns
    #50 $finish;
  end
endmodule
