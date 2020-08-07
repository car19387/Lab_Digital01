module testbench();

  reg p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18;
  wire out1, out2, out3, out4, out5, out6;

  SOP01  SO1(p1, p2, p3, out1);  //Behavioral Modelling de SOP
  POS01  PO1(p4, p5, p6, out2);  //Behavioral Modelling de POS
  MapaK01  MK1(p7, p8, p9, out3);  //Behavioral Modelling de MapaK
  SOP02  SO2(p10, p11, p12, out4);  //Gate Level Modelling de SOP
  POS02  PO2(p13, p14, p15, out5);  //Gate Level Modelling de POS
  MapaK02  MK2(p16, p17, p18, out6);  //Gate Level Modelling de MapaK

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
   $display("A B C | Y");
   $display("------|--");
   $monitor("%b %b %b | %b", p7, p8, p9, out3);
        p7 = 0; p8 = 0; p9 = 0;
     #1 p7 = 0; p8 = 0; p9 = 1;
     #1 p7 = 0; p8 = 1; p9 = 0;
     #1 p7 = 0; p8 = 1; p9 = 1;
     #1 p7 = 1; p8 = 0; p9 = 0;
     #1 p7 = 1; p8 = 0; p9 = 1;
     #1 p7 = 1; p8 = 1; p9 = 0;
     #1 p7 = 1; p8 = 1; p9 = 1;
 end

 initial begin
  #24
  $display("\n");
  $display("A B C | Y");
  $display("------|--");
  $monitor("%b %b %b | %b", p10, p11, p12, out4);
       p10 = 0; p11 = 0; p12 = 0;
    #1 p10 = 0; p11 = 0; p12 = 1;
    #1 p10 = 0; p11 = 1; p12 = 0;
    #1 p10 = 0; p11 = 1; p12 = 1;
    #1 p10 = 1; p11 = 0; p12 = 0;
    #1 p10 = 1; p11 = 0; p12 = 1;
    #1 p10 = 1; p11 = 1; p12 = 0;
    #1 p10 = 1; p11 = 1; p12 = 1;
 end

 initial begin
  #32
  $display("\n");
  $display("A B C | Y");
  $display("------|--");
  $monitor("%b %b %b | %b", p13, p14, p15, out5);
       p13 = 0; p14 = 0; p15 = 0;
    #1 p13 = 0; p14 = 0; p15 = 1;
    #1 p13 = 0; p14 = 1; p15 = 0;
    #1 p13 = 0; p14 = 1; p15 = 1;
    #1 p13 = 1; p14 = 0; p15 = 0;
    #1 p13 = 1; p14 = 0; p15 = 1;
    #1 p13 = 1; p14 = 1; p15 = 0;
    #1 p13 = 1; p14 = 1; p15 = 1;
 end

 initial begin
  #40
  $display("\n");
  $display("A B C | Y");
  $display("------|--");
  $monitor("%b %b %b | %b", p16, p17, p18, out6);
       p16 = 0; p17 = 0; p18 = 0;
    #1 p16 = 0; p17 = 0; p18 = 1;
    #1 p16 = 0; p17 = 1; p18 = 0;
    #1 p16 = 0; p17 = 1; p18 = 1;
    #1 p16 = 1; p17 = 0; p18 = 0;
    #1 p16 = 1; p17 = 0; p18 = 1;
    #1 p16 = 1; p17 = 1; p18 = 0;
    #1 p16 = 1; p17 = 1; p18 = 1;
 end

initial
  #50 $finish;

initial begin
  $dumpfile("Alarma_tb.vcd");
  $dumpvars(0, testbench);
end

endmodule
