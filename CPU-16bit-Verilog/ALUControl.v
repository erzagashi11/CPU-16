`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 14:15:40
// Design Name: 
// Module Name: ALUControl
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


module ALUControl(
    input [1:0] ALUOp,
    input [1:0] Funct, //2bit
    input [3:0] Opcode,
    output reg [3:0] ALUCtrl
    );
    
    always @(ALUOp)
begin
case(ALUOp) 
2'b00:
     ALUCtrl = 4'b0100; // LW ose SW // me mbledhje
2'b01: 
    ALUCtrl = 4'b1100; // BEQ
2'b10: //R format	
    case(Opcode)
    4'b0000: 
case(Funct)
2'b00:
ALUCtrl = 4'b0000; //and
2'b01:
ALUCtrl = 4'b0010;   //or
2'b10:
ALUCtrl = 4'b0011;    //xor
endcase

    4'b0001:
case(Funct)
2'b00:
ALUCtrl = 4'b0100; //add
2'b01:
ALUCtrl = 4'b1100;   //sub
endcase

    4'b0010:
case(Funct)
2'b00:
ALUCtrl = 4'b0110; //sll
2'b01:
ALUCtrl = 4'b0111;   //sra
endcase
 

endcase
    



2'b11: // I format
    case(Opcode)
    4'b1001: ALUCtrl = 4'b0100; //ADDI
	4'b1010: ALUCtrl = 4'b1100; //SUBI   
	4'b1011: ALUCtrl = 4'b0001; //SLTI
    endcase
endcase
end
endmodule
