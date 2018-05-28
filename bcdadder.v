// bcd_adder4.v - 4-bit BCD Adder with illegal input detection using Verilog dataflow modeling
//
// Rahul Marathe
// 25th Sept 2017
//
// Description:
// ------------
// BCD_ADDER Module adds Two 4bit numbers A and B to give a * bit packed output
//
module bcd_adder (
	input	[3:0]	X, Y,
	input			c_in,
	output		 c_out,
         output [7:0] result,
	output      out_of_range
          );

wire cout1,gt3,cout2,gt1,eq1,eq3,gt2,eq2;                   // Internal Wire Assignments
wire [3:0] sum1,muxout,sum2;                                // Internal Wire Assignments


compare cmp1(X,4'b1001,gt1,eq1);                            // logic to check whether either number is greater than 9

compare cmp2(Y,4'b1001,gt2,eq2);

assign out_of_range=gt1|gt2;                                 //Assign Logic to drive Multiplexer


//Instance 1 of full adder
fulladd4 ff1 (X,Y,c_in,sum1,cout1);                         // a,b,cin,sum1,carry1


//is sum>9?
compare outputff1(sum1,4'b1001,gt3,eq3);                    // a,b,gt,eq

wire adjust=cout1|gt3;                                      // cout1 or sum>9 detetct 

//Mux Initailization
mux2to1_nbits m1(4'b0110,4'b000,adjust,muxout);             // a,b,sel,output


//Instance 2 of full adder
fulladd4 ff2 (sum1,muxout,1'b0,sum2,cout2);                 // sum1,muxout,cin=0,sum,x5carry

assign c_out=cout1|cout2;
assign result= {3'b000,c_out,sum2};


endmodule
