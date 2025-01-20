`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 17:37:42
// Design Name: 
// Module Name: mux4ne1_ALU2
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


module mux4ne1_ALU2(
    input [15:0]Hyrja0,//sum
    input [15:0]Hyrja1,//slti
    input [15:0]Hyrja2,//sll
    input [15:0]Hyrja3,//sra
    input [3:0] S,
    output [15:0]Out
    );
    reg [3:0]Out;
    //assign Dalja = S[1] ? (S[0] ? Hyrja3 : Hyrja2) : (S[0] ? Hyrja1 : Hyrja0);
    always @ (Hyrja0 or Hyrja1 or Hyrja2 or Hyrja3 or S) 

begin 

 case (S) 

  4'b0001 : Out = Hyrja1; //slti

  4'b0110: Out = Hyrja2; //sll

  4'b0111 : Out = Hyrja3; //sra

  default : Out = Hyrja0; //sum; 

  //If input is undefined then output is undefined 

 endcase 

end  

endmodule

