  module Tabla04POS();

  reg A, B, C, D;
  wire orA, orB, orC, orD, orE, orF, orG, orH, orI, notA, notB, notC, notD, out;

  or O1(orA, A, B, C, notD);
  or O2(orB, A, notB, C, D);
  or O3(orC, A, notB, C, notD);
  or O4(orD, notA, B, C, notD);
  or O5(orE, notA, B, notC, notD);
  or O6(orF, notA, notB, C, D);
  or O7(orG, notA, notB, C, notD);
  or O8(orH, notA, notB, notC, D);
  or O9(orI, notA, notB, notC, notD);

  and Y1(out, orA, orB, orC, orD, orE, orF, orG, orH, orI);

  not N1(notA, A);
  not N2(notB, B);
  not N3(notC, C);
  not N4(notD, D);

  initial begin
    $display("A B C D | Y");

    $monitor("%b %b %b %b | %b", A, B, C, D, out);
       A = 0; B = 0; C = 0; D= 0;
    #1 A = 0; B = 0; C = 0; D= 1;
    #1 A = 0; B = 0; C = 1; D= 0;
    #1 A = 0; B = 0; C = 1; D= 1;
    #1 A = 0; B = 1; C = 0; D= 0;
    #1 A = 0; B = 1; C = 0; D= 1;
    #1 A = 0; B = 1; C = 1; D= 0;
    #1 A = 0; B = 1; C = 1; D= 1;
    #1 A = 1; B = 0; C = 0; D= 0;
    #1 A = 1; B = 0; C = 0; D= 1;
    #1 A = 1; B = 0; C = 1; D= 0;
    #1 A = 1; B = 0; C = 1; D= 1;
    #1 A = 1; B = 1; C = 0; D= 0;
    #1 A = 1; B = 1; C = 0; D= 1;
    #1 A = 1; B = 1; C = 1; D= 0;
    #1 A = 1; B = 1; C = 1; D= 1;
    #1 $finish;
  end

  initial
    begin
      $dumpfile("Tabla04POS_tb.vcd");
      $dumpvars(0,Tabla04POS);
    end

endmodule
