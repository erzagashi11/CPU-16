`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 20:17:20
// Design Name: 
// Module Name: Cpu2
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


module Cpu2(input Clock);

reg[15:0] PC;
wire[15:0] Instruction;

wire RegDst, Branch, MemRead, MemWrite, MemToReg, ALUSrc, RegWrite;
wire[1:0] ALUOp;
wire[15:0] BEQPC;

initial

begin
assign PC = 16'd10;
end

InstructionMemory IM(PC, Instruction);

ControlUnit CU(Instruction[15:12], RegDst,
ALUSrc,
MemToReg,
RegWrite,
MemRead,
MemWrite,
Branch,
ALUOp);  

Datapath DP(Clock, PC, RegDst,
Branch,
MemRead,
MemWrite,
MemToReg,
ALUSrc,
RegWrite,
ALUOp,
Instruction, BEQPC);

always@(posedge Clock)
begin
assign PC = BEQPC; //BEQ

end


     
endmodule

