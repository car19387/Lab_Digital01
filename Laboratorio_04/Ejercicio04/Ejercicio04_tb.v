module testbench();

  reg p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23, p24, p25, p26, p27, p28;
  wire out1, out2, out3, out4, out5, out6, out7, out8;

  behavioralModelling01  BM1(p1, p2, p3, out1);  //Ejercicio01_Tabla01
  behavioralModelling02  BM2(p4, p5, p6, out2);  //Ejercicio01_Tabla02
  behavioralModelling03  BM3(p7, p8, p9, p10, out3);  //Ejercicio01_Tabla03
  behavioralModelling04  BM4(p11, p12, p13, p14, out4);  //Ejercicio01_Tabla04
  gateLeve01  GL1(p15, p16, p17, p18, out5);   //Ejercicio02_Tabla01
  gateLeve02  GL2(p19, p20, p21, out6);    //Ejercicio02_Tabla02
  gateLeve03  GL3(p22, p23, p24, p25, out7);   //Ejercicio02_Tabla03
  gateLeve04  GL4(p26, p27, p28, out8);    //Ejercicio02_Tabla04

  initial begin
   $display("A B C | Y");
   $display("------|--");
   $monitor("%b %b %b | %b", p1, p2, p3, out1);
       p1 = 0; p2 = 0; p3 = 0;
     #1 p1 = 0; p2 = 0; p3 = 1;
     #1 p1 = 0; p2 = 1; p3 = 0;
     #1 p1 = 0; p2 = 1; p3 = 1;
     #1 p1 = 1; p2 = 0; p3 = 0;
     #1 p1 = 1; p2 = 0; p3 = 1;
     #1 p1 = 1; p2 = 1; p3 = 0;
     #1 p1 = 1; p2 = 1; p3 = 1;
 end

 initial begin
   #8
   $display("\n");
   $display("A B C | Y");
   $display("------|--");
   $monitor("%b %b %b | %b", p4, p5, p6, out2);
        p4 = 0; p5 = 0; p6 = 0;
     #1 p4 = 0; p5 = 0; p6 = 1;
     #1 p4 = 0; p5 = 1; p6 = 0;
     #1 p4 = 0; p5 = 1; p6 = 1;
     #1 p4 = 1; p5 = 0; p6 = 0;
     #1 p4 = 1; p5 = 0; p6 = 1;
     #1 p4 = 1; p5 = 1; p6 = 0;
     #1 p4 = 1; p5 = 1; p6 = 1;
 end

 initial begin
   #16
   $display("\n");
   $display("A B C D | Y");
   $display("-------|--");
   $monitor("%b %b %b %b| %b", p7, p8, p9, p10, out3);
        p7 = 0; p8 = 0; p9 = 0; p10 = 0;
     #1 p7 = 0; p8 = 0; p9 = 0; p10 = 1;
     #1 p7 = 0; p8 = 0; p9 = 1; p10 = 0;
     #1 p7 = 0; p8 = 0; p9 = 1; p10 = 1;
     #1 p7 = 0; p8 = 1; p9 = 0; p10 = 0;
     #1 p7 = 0; p8 = 1; p9 = 0; p10 = 1;
     #1 p7 = 0; p8 = 1; p9 = 1; p10 = 0;
     #1 p7 = 0; p8 = 1; p9 = 1; p10 = 1;
     #1 p7 = 1; p8 = 0; p9 = 0; p10 = 0;
     #1 p7 = 1; p8 = 0; p9 = 0; p10 = 1;
     #1 p7 = 1; p8 = 0; p9 = 1; p10 = 0;
     #1 p7 = 1; p8 = 0; p9 = 1; p10 = 1;
     #1 p7 = 1; p8 = 1; p9 = 0; p10 = 0;
     #1 p7 = 1; p8 = 1; p9 = 0; p10 = 1;
     #1 p7 = 1; p8 = 1; p9 = 1; p10 = 0;
     #1 p7 = 1; p8 = 1; p9 = 1; p10 = 1;
 end

 initial begin
   #32
   $display("\n");
   $display("A B C D | Y");
   $display("-------|--");
   $monitor("%b %b %b %b| %b", p11, p12, p13, p14, out4);
        p11 = 0; p12 = 0; p13 = 0; p14 = 0;
     #1 p11 = 0; p12 = 0; p13 = 0; p14 = 1;
     #1 p11 = 0; p12 = 0; p13 = 1; p14 = 0;
     #1 p11 = 0; p12 = 0; p13 = 1; p14 = 1;
     #1 p11 = 0; p12 = 1; p13 = 0; p14 = 0;
     #1 p11 = 0; p12 = 1; p13 = 0; p14 = 1;
     #1 p11 = 0; p12 = 1; p13 = 1; p14 = 0;
     #1 p11 = 0; p12 = 1; p13 = 1; p14 = 1;
     #1 p11 = 1; p12 = 0; p13 = 0; p14 = 0;
     #1 p11 = 1; p12 = 0; p13 = 0; p14 = 1;
     #1 p11 = 1; p12 = 0; p13 = 1; p14 = 0;
     #1 p11 = 1; p12 = 0; p13 = 1; p14 = 1;
     #1 p11 = 1; p12 = 1; p13 = 0; p14 = 0;
     #1 p11 = 1; p12 = 1; p13 = 0; p14 = 1;
     #1 p11 = 1; p12 = 1; p13 = 1; p14 = 0;
     #1 p11 = 1; p12 = 1; p13 = 1; p14 = 1;
 end

 initial begin
   #48
   $display("\n");
   $display("A B C D | Y");
   $display("-------|--");
   $monitor("%b %b %b %b| %b", p15, p16, p17, p18, out5);
        p15 = 0; p16 = 0; p17 = 0; p18 = 0;
     #1 p15 = 0; p16 = 0; p17 = 0; p18 = 1;
     #1 p15 = 0; p16 = 0; p17 = 1; p18 = 0;
     #1 p15 = 0; p16 = 0; p17 = 1; p18 = 1;
     #1 p15 = 0; p16 = 1; p17 = 0; p18 = 0;
     #1 p15 = 0; p16 = 1; p17 = 0; p18 = 1;
     #1 p15 = 0; p16 = 1; p13 = 1; p18 = 0;
     #1 p15 = 0; p16 = 1; p17 = 1; p18 = 1;
     #1 p15 = 1; p16 = 0; p17 = 0; p18 = 0;
     #1 p15 = 1; p16 = 0; p17 = 0; p18 = 1;
     #1 p15 = 1; p16 = 0; p17 = 1; p18 = 0;
     #1 p15 = 1; p16 = 0; p17 = 1; p18 = 1;
     #1 p15 = 1; p16 = 1; p17 = 0; p18 = 0;
     #1 p15 = 1; p16 = 1; p17 = 0; p18 = 1;
     #1 p15 = 1; p16 = 1; p17 = 1; p18 = 0;
     #1 p15 = 1; p16 = 1; p17 = 1; p18 = 1;
 end

 initial begin
   #64
   $display("\n");
   $display("A B C | Y");
   $display("------|--");
   $monitor("%b %b %b | %b", p19, p20, p21, out6);
        p19 = 0; p20 = 0; p21 = 0;
     #1 p19 = 0; p20 = 0; p21 = 1;
     #1 p19 = 0; p20 = 1; p21 = 0;
     #1 p19 = 0; p20 = 1; p21 = 1;
     #1 p19 = 1; p20 = 0; p21 = 0;
     #1 p19 = 1; p20 = 0; p21 = 1;
     #1 p19 = 1; p20 = 1; p21 = 0;
     #1 p19 = 1; p20 = 1; p21 = 1;
 end

 initial begin
   #72
   $display("\n");
   $display("A B C D | Y");
   $display("-------|--");
   $monitor("%b %b %b %b| %b", p22, p23, p24, p25, out7);
        p22 = 0; p23 = 0; p24 = 0; p25 = 0;
     #1 p22 = 0; p23 = 0; p24 = 0; p25 = 1;
     #1 p22 = 0; p23 = 0; p24 = 1; p25 = 0;
     #1 p22 = 0; p23 = 0; p24 = 1; p25 = 1;
     #1 p22 = 0; p23 = 1; p24 = 0; p25 = 0;
     #1 p22 = 0; p23 = 1; p24 = 0; p25 = 1;
     #1 p22 = 0; p23 = 1; p24 = 1; p25 = 0;
     #1 p22 = 0; p23 = 1; p24 = 1; p25 = 1;
     #1 p22 = 1; p23 = 0; p24 = 0; p25 = 0;
     #1 p22 = 1; p23 = 0; p24 = 0; p25 = 1;
     #1 p22 = 1; p23 = 0; p24 = 1; p25 = 0;
     #1 p22 = 1; p23 = 0; p24 = 1; p25 = 1;
     #1 p22 = 1; p23 = 1; p24 = 0; p25 = 0;
     #1 p22 = 1; p23 = 1; p24 = 0; p25 = 1;
     #1 p22 = 1; p23 = 1; p24 = 1; p25 = 0;
     #1 p22 = 1; p23 = 1; p24 = 1; p25 = 1;
 end

 initial begin
   #88
   $display("\n");
   $display("A B C | Y");
   $display("------|--");
   $monitor("%b %b %b | %b", p26, p27, p28, out8);
        p26 = 0; p27 = 0; p28 = 0;
     #1 p26 = 0; p27 = 0; p28 = 1;
     #1 p26 = 0; p27 = 1; p28 = 0;
     #1 p26 = 0; p27 = 1; p28 = 1;
     #1 p26 = 1; p27 = 0; p28 = 0;
     #1 p26 = 1; p27 = 0; p28 = 1;
     #1 p26 = 1; p27 = 1; p28 = 0;
     #1 p26 = 1; p27 = 1; p28 = 1;
 end

 initial
   #100 $finish;

 initial begin
   $dumpfile("Ejercicio04_tb.vcd");
   $dumpvars(0, testbench);
 end

endmodule
