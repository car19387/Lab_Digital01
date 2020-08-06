  module Tabla01POS();

  reg A, B, C;
  wire orA, orB, orC, orD, notA, notB, notC, out;

  or O1(orA, A, B, notC);
  or O2(orB, A, notB, notC);
  or O3(orC, notA, notB, C);
  and Y1(out, orA, orB, orC);
  not N1(notA, A);
  not N2(notB, B);
  not N3(notC, C);

  initial begin
    $display("A B C | Y");

    $monitor("%b %b %b | %b", A, B, C, out);
       A = 0; B = 0; C= 0;
    #1 A = 0; B = 0; C= 1;
    #1 A = 0; B = 1; C= 0;
    #1 A = 0; B = 1; C= 1;
    #1 A = 1; B = 0; C= 0;
    #1 A = 1; B = 0; C= 1;
    #1 A = 1; B = 1; C= 0;
    #1 A = 1; B = 1; C= 1;
    #1 $finish;
  end

  initial
    begin
      $dumpfile("Tabla01POS_tb.vcd");
      $dumpvars(0,Tabla01POS);
    end

endmodule
