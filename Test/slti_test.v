`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2024 04:15:44
// Design Name: 
// Module Name: slti_test
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


module slti_test();
reg [15:0]rs;
reg[15:0] immediate;
wire [15:0]rt;
initial 
$monitor (" rs=%b, immediate=%b,rt=%b",
 rs, immediate, rt);

initial
begin

#0 rs=16'd4; immediate=16'd8;
#10 $stop;
end
Slti slt(rs,immediate,rt);

endmodule
