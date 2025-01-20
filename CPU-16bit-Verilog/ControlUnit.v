`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 19:07:35
// Design Name: 
// Module Name: ControlUnit
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


module ControlUnit(

  input [3:0] OPCODE,
  output reg RegDst,
  output reg ALUSrc,
  output reg MemToReg,
  output reg RegWrite,
  output reg MemRead,
  output reg MemWrite,
  output reg Branch,
  output reg [1:0] ALUOP
);


always @(OPCODE)
begin
case(OPCODE)
4'b0000:
  begin
    assign RegDst = 1'b1;
    assign ALUSrc = 1'b0;
    assign MemToReg = 1'b0;
    assign RegWrite = 1'b1;          //and, or, xor,  
    assign MemRead = 1'b0;
    assign MemWrite = 1'b0;
    assign Branch = 1'b0;
    assign ALUOP = 2'b10;
  end
 
 4'b0001:
   begin
    assign RegDst = 1'b1;
    assign ALUSrc = 1'b0;
    assign MemToReg = 1'b0;
    assign RegWrite = 1'b1;         //add, sub  
    assign MemRead = 1'b0;
    assign MemWrite = 1'b0;
    assign Branch = 1'b0;
    assign ALUOP = 2'b10;
  end
 
 
 
   4'b1001:
   begin
    assign RegDst = 1'b0;
    assign ALUSrc = 1'b1;
    assign MemToReg = 1'b0;
    assign RegWrite = 1'b1;          //addi  
    assign MemRead = 1'b0;
    assign MemWrite = 1'b0;
    assign Branch = 1'b0;
    assign ALUOP = 2'b11;
  end
 
 
   4'b1010:
   begin
    assign RegDst = 1'b0;
    assign ALUSrc = 1'b1;
    assign MemToReg = 1'b0;
    assign RegWrite = 1'b1;           //subi  
    assign MemRead = 1'b0;
    assign MemWrite = 1'b0;
    assign Branch = 1'b0;
    assign ALUOP = 2'b11;
  end
     
 
 
    4'b1011:
   begin
    assign RegDst = 1'b0;
    assign ALUSrc = 1'b1;
    assign MemToReg = 1'b0;
    assign RegWrite = 1'b1;          //slti  
    assign MemRead = 1'b0;
    assign MemWrite = 1'b0;
    assign Branch = 1'b0;
    assign ALUOP = 2'b11;
  end
 

 
      4'b1100:
   begin
    assign RegDst = 1'b0;
    assign ALUSrc = 1'b1;
    assign MemToReg = 1'b1;
    assign RegWrite = 1'b1;          //lw
    assign MemRead = 1'b1;
    assign MemWrite = 1'b0;
    assign Branch = 1'b0;
    assign ALUOP = 2'b00;
  end
 
        4'b1101:
   begin
    assign RegDst = 1'b0;
    assign ALUSrc = 1'b1;
    assign MemToReg = 1'b0;
    assign RegWrite = 1'b0;         //sw
    assign MemRead = 1'b0;
    assign MemWrite = 1'b1;
    assign Branch = 1'b0;
    assign ALUOP = 2'b00;
  end
 
 
        4'b1111:
   begin
    assign RegDst = 1'b0;
    assign ALUSrc = 1'b0;
    assign MemToReg = 1'b0;
    assign RegWrite = 1'b0;         //beq
    assign MemRead = 1'b0;
    assign MemWrite = 1'b0;
    assign Branch = 1'b1;
    assign ALUOP = 2'b01;
  end
 
 
 
   
        4'b0010:
   begin
    assign RegDst = 1'b1;
    assign ALUSrc = 1'bx;
    assign MemToReg = 1'b0;
    assign RegWrite = 1'b1;         //sll,sra
    assign MemRead = 1'b0;
    assign MemWrite = 1'b0;
    assign Branch = 1'b0;
    assign ALUOP = 2'b10;
  end
 
endcase
end
endmodule
