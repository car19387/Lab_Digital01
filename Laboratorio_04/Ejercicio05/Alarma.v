module SOP01 (input wire A, B, C, output wire Y);   //Behavioral Modelling de SOP
  assign Y = (~A & ~B & ~C) | (~A & ~B & C) | (~A & B & ~C) |(~A & B & C) | (A & ~B & ~C) | (A & ~B & C) | (A & B & C);
endmodule

module POS01 (input wire A, B, C, output wire Y);   //Behavioral Modelling de POS
  assign Y = ~A | ~B | C;
endmodule

module MapaK01 (input wire A, B, C, output wire Y);   //Behavioral Modelling de MapaK
  assign Y = ~A | ~B | C;
endmodule

module SOP02 (input wire A, B, C, output wire Y);   //Gate Level Modelling de SOP
  wire notB;
  or  O1(Y, andA, andB, andC, andD, andE, andF, andG);
  and A1(andA, notA, notB, notC);
  and A2(andB, notA, notB, C);
  and A3(andC, notA, B, notC);
  and A4(andD, notA, B, C);
  and A5(andE, A, notB, notC);
  and A6(andF, A, notB, C);
  and A7(andG, A, B, C);
  not N1(notA, A);
  not N2(notB, B);
  not N3(notC, C);
endmodule

module POS02 (input wire A, B, C, output wire Y);    //Gate Level Modelling de POS
  or  O1(Y, notA, notB, C);
  not N1(notA, A);
  not N2(notB, B);
endmodule

module MapaK02 (input wire A, B, C, output wire Y);   //Gate Level Modelling de MapaK
  or  O1(Y, notA, notB, C);
  not N1(notA, A);
  not N2(notB, B);
endmodule
