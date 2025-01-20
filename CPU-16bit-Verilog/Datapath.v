`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 19:02:11
// Design Name: 
// Module Name: Datapath
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


module Datapath(
input Clock,
input[15:0] PC,
input RegDst,
input Branch,
input MemRead,
input MemWrite,
input MemToReg,
input ALUSrc,
input RegWrite,
input MulRegWrite,
input[1:0] ALUOp,
input[15:0] Instruction, output[15:0] BEQPC);

wire[3:0] opcode; // prej IM
wire[1:0] RS; // Prej Im
wire[1:0] RT;//prej IM
wire[1:0] RD;//Prej IM
wire[1:0] Funct;//Prej IM
wire[7:0] Immediate;//Prej IM
wire[15:0] Immediate16;// Prej signextend
wire[1:0] percaktoDestinacionin;// RT a RD prej MUX afer REG File
wire[15:0] percaktoHyrjenB;// Dalja Mux afer alu
wire[15:0] ALUOut;// dalja alu
wire[15:0] DMOut;//Dalja Memorie
wire[15:0] WriteDataToRegister;// Dalja prej MUX afer DM
wire Zero, CarryOut, Overflow;// Daljet e Alus
wire[3:0] ALUControlOut;
wire[15:0] ReadRS;
wire[15:0] ReadRT;




assign opcode = Instruction[15:12];
assign RS = Instruction[11:10];
assign RT = Instruction[9:8];
assign RD = Instruction[7:6];
assign Funct = Instruction[1:0];
assign Immediate = Instruction[7:0];

mux2in1_2bit mDest(RT, RD, RegDst, percaktoDestinacionin);
mux2ne1_16bit mDalja(ALUOut, DMOut, MemToReg, WriteDataToRegister);

RegisterFile RF(RS, RT, percaktoDestinacionin, WriteDataToRegister, ReadRS, ReadRT, RegWrite, Clock);

assign Immediate16 = {{8{Immediate[7]}}, Immediate[7:0]};

mux2ne1_16bit mALU(ReadRT, Immediate16, ALUSrc, percaktoHyrjenB);

ALUControl AC(ALUOp, Funct, opcode, ALUControlOut);

ALU_16bit_2 ALU(ReadRS, percaktoHyrjenB, ALUControlOut[3:0],Instruction[5:2],Zero, CarryOut, ALUOut);

DataMemory DM(ALUOut, ReadRT, MemWrite, MemRead, Clock, DMOut);

assign PC = PC + 16'd2;

wire PcCarryOut;
wire [15:0] ImmediateShifted;
wire [15:0] ImmediateShiftedPlusPC;

assign ImmediateShifted = {Immediate16[14:0], 1'b0};
//assign ImmediateShiftedPlusPC = ImmediateShifted + PC;
Adder_16bit beqPlusPc(ImmediateShifted, PC, ImmediateShiftedPlusPC, PcCarryOut);
assign BEQPC = (Branch & Zero) ? ImmediateShiftedPlusPC : PC;

endmodule 