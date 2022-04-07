
// Author: Ha How Ung
// Written on: 8 April 2021 (Fri)
// Title: Dataflow modelling of a half-adder

module HA_D (a, b, s, c);

	input a, b;
	output s, c;

	assign s = a ^ b;
	assign c = a & b;
	
endmodule