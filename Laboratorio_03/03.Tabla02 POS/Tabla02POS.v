  module Tabla02POS();

  reg A, B, C;
  wire orA, orB, orC, orD, orE, notA, notB, notC, out;

  or O1(orA, A, B, C);
  or O2(orB, A, notB, C);
  or O3(orC, A, notB, notC);
  or O4(orD, notA, B, C);
  or O5(orE, notA, B, notC);
  and Y1(out, orA, orB, orC, orD, orE);
  not Y1(notA, A);
  not Y2(notB, B);
  not Y3(notC, C);

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
      $dumpfile("Tabla02POS_tb.vcd");
      $dumpvars(0,Tabla02POS);
    end

endmodule
