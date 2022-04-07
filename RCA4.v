
// Author: Ha How Ung
// Written on: 8 April 2021 (Fri)
// Title: 4-bit ripple-carry adder

module RCA4 (
	input [3:0] A, B, 
	input Cin,
	output [3:0] S, 
	output Cout
);

	wire c1, c2, c3;
	
	FA_S u0 (.Cin(Cin), .A(A[0]), .B(B[0]), .Sum(S[0]), .Cout(c1));
	FA_S u1 (.Cin(c1), .A(A[1]), .B(B[1]), .Sum(S[1]), .Cout(c2));
	FA_S u2 (.Cin(c2), .A(A[2]), .B(B[2]), .Sum(S[2]), .Cout(c3));
	FA_S u3 (.Cin(c3), .A(A[3]), .B(B[3]), .Sum(S[3]), .Cout(Cout));

endmodule