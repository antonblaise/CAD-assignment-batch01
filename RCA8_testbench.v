`timescale 10ns/1ns

module RCA8_testbench(); // no input, no output
  
  reg [7:0] a, b;   // always declare inputs as reg
  reg sub;
  wire [8:0] z;    
  wire Cout;	    // and outputs as wire
  
  RCA8 DUT ( .a(a), .b(b), .sub(sub), .z(z), .Cout(Cout));
  
  initial
  begin
    $monitor($time, " a=%d, b=%d, sub=%b, z=%d, Cout=%b, ",a,b,sub,z,Cout);
  end
  
  initial
  begin
    $dumpvars(1, RCA8_testbench);
    #0  sub=0; a=8'h00; b=8'h00; // at time = 0ns
    repeat (31)
    begin
      #50 a <= a + 2; b <= b + 1;
    end
    
    #50 sub=1; a=8'h00; b=8'h00;
    
    repeat (31)
    begin
      #50 a <= a + 2; b <= b + 1;
    end
  end
  
endmodule
