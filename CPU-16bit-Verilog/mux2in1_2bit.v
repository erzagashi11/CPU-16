`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 19:48:49
// Design Name: 
// Module Name: mux2in1_2bit
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


module mux2in1_2bit(
    input [1:0]Hyrja0,
    input[1:0] Hyrja1,
    input S,
    output [1:0]Dalja
    );
     assign Dalja = S ? Hyrja1 : Hyrja0;
endmodule
