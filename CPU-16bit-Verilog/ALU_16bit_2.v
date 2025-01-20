`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 17:20:35
// Design Name: 
// Module Name: ALU_16bit_2
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


module ALU_16bit_2(
    input [15:0] A,
    input [15:0] B,
    input [3:0] ALUOp,
    input [3:0] shamt,
    output Zero,
    output CarryOut,
    output [15:0] Result);
    
    wire [15:0]Slti_;
    wire [15:0]Sll_;
    wire[15:0] Sra;
     wire[15:0] Sum;

ALU_16bit ALU(A,B,ALUOp[2:0],ALUOp[3],Zero,CarryOut,Sum);
Slti slti(A,B,Slti_);
SLL sll(A,shamt,Sll_);
Sra sra(A,shamt,Sra);

mux4ne1_ALU2 MUX(Sum,Slti_,Sll_,Sra,ALUOp,Result);
endmodule
