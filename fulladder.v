// fulladd.v - one bit full adder using Verilog gate-level modeling
//
// <Rahul Marathe>
// <25th Sept 2017>
//
// Description:
// ------------
// 1 Bit Full Adder with Two 1 Bit Inputs A,B and Carry_in.Sum and Carry as Outputs. 
//
module fulladd (
	input	a, b,
	input	ci,
	output	s,
	output	co
);

wire s1,s2,s3,s4,s5;                // Internal Wires


xor                                // Assignments of Inputs and Outputs using Gate level Modelling
xor1 (s1,a,b),
xor2( s,ci,s1);

and
and1(s3,b,s2),
and2 (s4,s1,ci);

not (s2,s1);

or(co,s4,s3);


endmodule
