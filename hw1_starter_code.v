/*
================================
Homework #1 Starter Code
ECE 508 WKSP:  Verilog Workshop
by Roy Kravitz (24-Sep-2017)
================================
*/

// compare.v - compares two unsigned numbers 
//
// Roy Kravitz
// 24-Sep-2016
//
// Description:
// ------------
// Compares two unsigned numbers and signals whether the first number (a) is
// greater than and/or equal to the second (b).  a < b would be indicated as
//    assign lt = ~gt * ~eq
//
// There is a single parameter SIZE (default 4 bits) that can be used
// to specify the size of the compare.  Any numbers that require more
// bits than SIZE will be truncated
//
module compare
#(
	parameter SIZE = 4
)
(
	input	[SIZE-1:0]	a,			// number to compare
	input	[SIZE-1:0]	b,			// number to compare against
	output				gt,			// asserted high if a > b, low otherwise
	output				eq			// asserted high if a == b, low otherwise
);

assign gt = a > b;
assign eq = a == b;

endmodule


// mux2to1_nbits.v - parameterized 2:1 multiplexer
//
// Roy Kravitz
// 24-Sep-2016
//
// Description:
// ------------
// Implements a 2:1 multiplexer.  The single parameter SIZE (default 4 bits) that can be used
// to specify the size of the multiplexer inputs and outputs
//
module mux2to1_nbits
#(
	parameter SIZE = 4
)
(
	input	[SIZE-1:0]	a,			// number to compare
	input	[SIZE-1:0]	b,			// number to compare against
	input				sel,		// selects a if asserted high, b if asserted low
	output	[SIZE-1:0]	out			// multiplexer output
);

assign out = sel ? a : b;

endmodule


// fulladd.v - one bit full adder using Verilog gate-level modeling
//
// <your name>
// <date>
//
// Description:
// ------------
// <your description of what the module does>
//
module fulladd (
	input	a, b,
	input	ci,
	output	s,
	output	co
);

// <your code>

endmodule


// fulladd4.v - 4-bit binary adder
//
// <your name>
// <date>
//
// Description:
// ------------
// <your description of what the module does>
//
module fulladd4 (
	input	[3:0]	a, b,
	input			c_in,
	output	[3:0]	s,
	output			c_out
);

// <your code>

endmodule




	
