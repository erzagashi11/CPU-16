`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 03:21:02
// Design Name: 
// Module Name: ALU_1bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU_1bit(
    input A,
    input B,
    input CIN,
    input BInvert,
    input [2:0] Operation,
    output Result,
    output COUT
    );

wire  JoB, mB, Dhe, Ose, Mbledhesi, XOR;

assign JoB = ~B;

mux2in1 muxB(B, JoB, BInvert, mB);

assign Dhe = A & mB;
assign Ose = A | mB;
assign XOR = ~Dhe & Ose;
add_1bit  Adder(A, mB, CIN, Mbledhesi, COUT);

mux4in1_ALU1bit muxALU(Dhe, Ose, Mbledhesi, XOR, Operation, Result);
   
endmodule
