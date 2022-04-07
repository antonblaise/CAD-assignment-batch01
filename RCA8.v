
// Author: Ha How Ung
// Written on: 8 April 2021 (Fri)
// Title: 8-bit adder/subtractor unit

module RCA8 (
	input [7:0] a, b,
	input sub,
	output [8:0] z
);

	wire c;
	
	RCA4 u0 (.A(a[3:0]), .B(b[3:0] ^ (sub ? 8'hF : 8'h0)), .Cin(sub), .S(z[3:0]), .Cout(c));
	RCA4 u1 (.A(a[7:4]), .B(b[7:4] ^ (sub ? 8'hF : 8'h0)), .Cin(c), .S(z[7:4]), .Cout(z[8]));

endmodule