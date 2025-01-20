`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2024 06:22:22
// Design Name: 
// Module Name: Sra_test
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


module Sra_test();


   reg [15:0]A;
reg[3:0] shiftAmount;
wire [15:0]out;
initial 
$monitor (" A=%b, Shamt=%b,SLLI=%b",
 A, shiftAmount, out);

initial
begin

#0 A=16'd8; shiftAmount=4'b0010;
#10 $stop;
end
Sra sll(A,shiftAmount,out);




endmodule
