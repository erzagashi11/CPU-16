`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 14:20:23
// Design Name: 
// Module Name: RegisterFile
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


module RegisterFile(
  input wire[1:0] RS,
  input wire[1:0] RT,
  input wire[1:0] RD,
  input wire[15:0] WriteData,
  output wire [15:0] ReadRS,
  output wire [15:0] ReadRT,
  input wire RegWrite,
  input wire Clock
);
 
  reg [15:0] Registers [3:0];// 16 bit regjistrat- 4 regjistra 
 
 
  // resetting all registers to zero
  integer i;
  initial
  begin
    for(i=0;i<4;i=i+1)
    begin
      Registers[i]<=16'd0;
  end
 end
 
  // write in the register
  always @(posedge Clock)
    begin
      if(RegWrite) Registers[RD] <= WriteData;
      end
     
      assign ReadRS = Registers[RS];
      assign ReadRT = Registers[RT];
     
      endmodule
