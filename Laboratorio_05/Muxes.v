module MUX2_1(input wire s, d0, d1, output wire Y);
    assign Y = s ? d1 : d0;
endmodule


module MUX4_1(input wire d0, d1, d2, d3, input wire[1:0]s1, output wire Y);
  wire Y1, Y2;

  MUX2_1 M1(s1[0], d0, d1, Y1);
  MUX2_1 M2(s1[0], d2, d3, Y2);
  MUX2_1 M3(s1[1], Y1, Y2, Y);
endmodule


module MUX8_1(input wire d0, d1, d2, d3, d4, d5, d6, d7, input wire [2:0]s1, output wire Y);
  wire Y1, Y2;

  MUX4_1 M1(d0, d1, d2, d3, s1[1:0], Y1);
  MUX4_1 M2(d4, d5, d6, d7, s1[1:0], Y2);
  MUX2_1 M3(s1[2], Y1, Y2, Y);
endmodule


module Tabla1_MUX2_1(input wire A, B, C, output wire Y);
  assign Y1 = (B ^ C);
  assign Y2 = ~(B ^ C);
  MUX2_1 M1(A, Y1, Y2, Y);
endmodule


module Tabla1_MUX4_2(input wire A, B, C, output wire Y);
  wire Y1;
  wire [1:0]s1;
  assign Y1 = ~C;
  assign s1[0] = B;
  assign s1[1] = A;
  MUX4_1 M1(C, ~C, ~C, C, s1[1:0], Y);
endmodule


module Tabla1_MUX8_3(input wire A, B, C, Vcc, GND, output wire Y);
  wire [2:0]s1;
  assign s1[0] = C;
  assign s1[1] = B;
  assign s1[2] = A;
  MUX8_1 m1(GND, Vcc, Vcc, GND, Vcc, GND, GND, Vcc, s1[2:0], Y);
endmodule


module Tabla2_MUX2_1(input wire A, B, C, output wire Y);
  assign Y1 = (B ~| C);
  assign Y2 = ~(B & C);
  MUX2_1 M1(A, Y1, Y2, Y);
endmodule


module Tabla2_MUX4_2(input wire A, B, C, Vcc, GND, output wire Y);
  wire [1:0]s1;
  assign s1[0] = B;
  assign s1[1] = A;
  MUX4_1 M1(~C, GND, Vcc, ~C, s1[1:0], Y);
endmodule


module Tabla2_MUX8_3(input wire A, B, C, Vcc, GND, output wire Y);
  wire[2:0]s1;
  assign s1[0] = C;
  assign s1[1] = B;
  assign s1[2] = A;
  MUX8_1 M1(Vcc, GND, GND, GND, Vcc, Vcc, Vcc, GND, s1[2:0], Y);
endmodule
