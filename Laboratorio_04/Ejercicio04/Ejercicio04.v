module behavioralModelling01 (input wire A, B, C, output wire Y);   //Ejercicio01_Tabla01
  assign Y = (A & B & ~C) | ~(B | C);
endmodule

module behavioralModelling02 (input wire A, B, C, output wire Y);   //Ejercicio01_Tabla02
  assign Y = ~B;
endmodule

module behavioralModelling03 (input wire A, B, C, D, output wire Y);    //Ejercicio01_Tabla03
  assign Y = ~B;
endmodule

module behavioralModelling04 (input wire A, B, C, D, output wire Y);    //Ejercicio01_Tabla04
  assign Y = ~B;
endmodule

module gateLevel01 (input wire A, B, C, D, output wire Y);    //Ejercicio02_Tabla01
  wire notA, notB, notC, notD;
  or  O1(Y, notA, notB, notC, notD);
  not N1(notA, A);
  not N2(notB, B);
  not N3(notC, C);
  not N3(notD, D);
endmodule

module gateLevel02 (input wire A, B, C, output wire Y);   //Ejercicio02_Tabla02
  wire notB;
  or  O1(Y, notB, B);
  not N1(notB, B);
endmodule

module gateLevel03 (input wire A, B, C, D, output wire Y);    //Ejercicio02_Tabla03
  or  O1(Y, A, B);
endmodule

module gateLevel04 (input wire A, B, C, output wire Y);   //Ejercicio02_Tabla04
  or  O1(Y, A, B);
endmodule
