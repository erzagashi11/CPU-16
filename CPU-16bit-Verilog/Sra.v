`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 17:00:28
// Design Name: 
// Module Name: Sra
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


module Sra(
  input [15:0] A,
  input [3:0] shiftAmount,
  output reg [15:0] out
);

  always @* begin
    out = A; // Initialize out with A

    if (shiftAmount[0] == 1'b1)
      out = {1'b0, out[15:1]}; // Shift right by 1 with sign extension

    if (shiftAmount[1] == 1'b1)
      out = {2'b00, out[15:2]}; // Shift right by 2 with sign extension

    if (shiftAmount[2] == 1'b1)
      out = {4'b0000, out[15:4]}; // Shift right by 4 with sign extension

    if (shiftAmount[3] == 1'b1)
      out = {8'b00000000, out[15:8]}; // Shift right by 8 with sign extension
  end
endmodule
