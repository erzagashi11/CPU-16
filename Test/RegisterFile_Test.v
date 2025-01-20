`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2024 07:18:23
// Design Name: 
// Module Name: RegisterFile_Test
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


module RegisterFile_Test();
reg [1:0] RS, RT, RD;
reg  RegWrite, Clock;
reg [15:0] WriteData;
wire[15:0] ReadSR, ReadRT;

initial
begin
#0 Clock = 1'b0;
#5 RD = 2'd2; WriteData = 16'd1; RegWrite = 1'b1;
#5 Clock = 1'b1;
#5 Clock = 1'b0; RegWrite=1'b1;
#5 RD=2'd3; WriteData=16'd4; RegWrite=1'b1;
#5 Clock = 1'b1;
#5 Clock = 1'b0; RegWrite=1'b0;
#5 RS=2'd2; RT=2'd3;
#5 $stop;

end

RegisterFile RF(RS, RT, RD, WriteData, ReadRS, ReadRT, RegWrite, Clock);

endmodule
