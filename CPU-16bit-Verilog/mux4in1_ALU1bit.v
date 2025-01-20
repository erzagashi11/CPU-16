


module mux4in1_ALU1bit(
    input Hyrja0,
    input Hyrja1,
    input Hyrja2,
    input Hyrja3,
    input [2:0] S,
    output Out
    );
    reg [3:0]Out;
    //assign Dalja = S[1] ? (S[0] ? Hyrja3 : Hyrja2) : (S[0] ? Hyrja1 : Hyrja0);
    always @ (Hyrja0 or Hyrja1 or Hyrja2 or Hyrja3 or S) 

begin 

 case (S) 

  3'b000 : Out = Hyrja0; //and

  3'b010 : Out = Hyrja1; //or

  3'b100 : Out = Hyrja2; //add

  3'b011 : Out = Hyrja3; //xor

  default : Out = 4'bx; 

  //If input is undefined then output is undefined 

 endcase 

end  

endmodule
