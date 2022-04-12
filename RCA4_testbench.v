`timescale 10ns/1ns

module RCA4_testbench(); // no input, no output
  
  reg [3:0] A, B;  // always declare inputs as reg
  reg Cin;
  wire [3:0] S;  // and outputs as wire
  wire Cout;
  
  RCA4 DUT ( .A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));
  
  initial
  begin
    $monitor($time, " A=%b, B=%b, Cin=%b, S=%b, Cout=%b", A, B, Cin, S, Cout);
  end
  
  initial
  begin
    $dumpvars(1, RCA4_testbench);
    #0  Cin=0; A=0; B=0; // at time = 0ns
    repeat (15)
    begin
      #50 A <= A + 1; B <= B + 1;
    end
    
    #50  Cin=1; A=0; B=0;
    
    repeat (15)
    begin
      #50 A <= A + 1; B <= B + 1;
    end
  end
  
endmodule
