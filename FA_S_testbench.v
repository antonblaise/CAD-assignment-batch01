`timescale 10ns/1ns

module FA_S_testbench(); // no input, no output
  
  reg Cin, A, B;  // always declare inputs as reg
  wire Sum, Cout; // and outputs as wire
  
  FA_S DUT (.Cin(Cin), .A(A), .B(B), .Sum(Sum), .Cout(Cout));
  
  initial
  begin
    $monitor($time, "Cin=%b, A=%b, B=%b, Sum=%b, Cout=%b", Cin, A, B, Sum, Cout);
  end
  
  initial
  begin
    $dumpvars(1, FA_S_testbench);
    #0  Cin=0; A=0; B=0; // at time = 0ns
    #50 Cin=0; A=0; B=1; // after 50ns
    #50 Cin=0; A=1; B=0; // after 50ns
    #50 Cin=0; A=1; B=1; // after 50ns
    #50 Cin=1; A=0; B=0; // after 50ns
    #50 Cin=1; A=0; B=1; // after 50ns
    #50 Cin=1; A=1; B=0; // after 50ns
    #50 Cin=1; A=1; B=1; // after 50ns
    #50 $finish;
  end
endmodule
