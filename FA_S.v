
// Author: Ha How Ung
// Written on: 8 April 2021 (Fri)
// Title: Structural modelling of full-adder

module FA_S (Cin, A, B, Sum, Cout) ;

	input Cin, A, B;
	output Sum, Cout ;
	wire s1, s2, s3;
	
	HA_D u1 (A, B, s1, s2);
	HA_D u2 (s1, Cin, Sum, s3);
	assign Cout = s2 | s3;
	
endmodule