
// fulladd4.v - 4-bit binary adder
//
// Rahul Marathe
// 25th Sept 2017 
//
// Description:
// ------------
// A 4 bit adder with two inputs(4 bit wide) A and B and Cin(1 bit) and outputs Sum(4 bits) and Carry_Out(1 bit)
//
module fulladd4 (                             // Implementation of a 4bit FullAdder
	input	[3:0]	a, b,                 // Two 4 bit Inputs A and B
	input			c_in,         // Carry In
	output	[3:0]	s,                    // 4 Bit Sum
	output			c_out         // Carry out
);

wire c1,c2,c3;                                // Internal Wires to Cascade 4 instances of 1 bit Full_Adder
fulladd ff0 (a[0],b[0],c_in,s[0],c1);         // Full-Adder0 with A[0],B[0],Cin,Sum[0],Carry[0]
fulladd ff1 (a[1],b[1],c1,s[1],c2);           // Full-Adder1 with A[1],B[1],Cin,Sum[1],Carry[1]
fulladd ff2 (a[2],b[2],c2,s[2],c3);           // Full-Adder2 with A[2],B[2],Cin,Sum[2],Carry[2]
fulladd ff3 (a[3],b[3],c3,s[3],c_out);        // Full-Adder3 with A[3],B[3],Cin,Sum[3],Carry[3]



endmodule
