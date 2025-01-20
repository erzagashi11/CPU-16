`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 03:17:43
// Design Name: 
// Module Name: Slti
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


module Slti(
    input[15:0] A, // A
    input[15:0] B, // mB
    output[15:0] rez // slti
    );
wire lsb;
assign lsb = (A < B) ? 1 : 0;
assign rez = {15'b0, lsb};

endmodule
