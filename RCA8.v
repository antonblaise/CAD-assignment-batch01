
// Author: Ha How Ung
// Written on: 8 April 2021 (Fri)
// Title: 8-bit adder/subtractor unit

module RCA8 (
	input [7:0] a, b,
	input sub,
	output [7:0] z,
	output Cout
);

	wire c;
	
	RCA4 u0 (.A(a[3:0]), .B(b[3:0] ^ (sub ? 4'hF : 4'h0)), .Cin(sub), .S(z[3:0]), .Cout(c));
	RCA4 u1 (.A(a[7:4]), .B(b[7:4] ^ (sub ? 4'hF : 4'h0)), .Cin(c), .S(z[7:4]), .Cout(Cout));

endmodule