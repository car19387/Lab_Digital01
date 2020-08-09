module behavioralModelling01 (input wire A, B, C, output wire Y);   //Ejercicio01_Tabla01
  assign Y = (~A & ~C) | (A & C) | (A & ~B);
endmodule

module behavioralModelling02 (input wire A, B, C, output wire Y);   //Ejercicio01_Tabla02
  assign Y = ~B;
endmodule

module behavioralModelling03 (input wire A, B, C, D, output wire Y);    //Ejercicio01_Tabla03
  assign Y = (~A & ~B & ~C & ~D) | (~A & ~B & C & D) | (~A & B & ~C & D) | (~A & B & C & ~D) | (A & ~B & ~C & D) | (A & ~B & C & ~D) | (A & B & ~C & ~D) | (A & B & C & D);
endmodule

module behavioralModelling04 (input wire A, B, C, D, output wire Y);    //Ejercicio01_Tabla04
  assign Y = A & (B | C | ~D);
endmodule

module gateLeve01 (input wire A, B, C, D, output wire Y);    //Ejercicio02_Tabla01
  wire notA, notB, notC, notD, andA, andB, andC, andD;
  or  O1(Y, andA, andB, andC, andD);
  and A1(andA, A, notC);
  and A2(andB, A, notB);
  and A3(andC, A, notD);
  and A4(andD,notB, notC, notD);
  not N1(notA, A);
  not N2(notB, B);
  not N3(notC, C);
  not N3(notD, D);
endmodule

module gateLeve02 (input wire A, B, C, output wire Y);   //Ejercicio02_Tabla02
  wire notB;
  or  O1(Y, notB, C);
  not N1(notB, B);
endmodule

module gateLeve03 (input wire A, B, C, D, output wire Y);    //Ejercicio02_Tabla03
  or  O1(Y, B, andA, andB);
  and A1(andA, notC, D);
  and A2(andB, A, D);
  not N1(notC, C);
endmodule

module gateLeve04 (input wire A, B, C, output wire Y);   //Ejercicio02_Tabla04
  or  O1(Y, and1, B);
  and A1(and1, notA, notC);
  not N1(notA, A);
  not N2(notC, C);
endmodule
