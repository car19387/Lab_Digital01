  module Tabla04SOP();

  reg A, B, C, D;
  wire andA, andB, andC, andD, andE, andF, andG, notA, notB, notC, notD, out;

  or O1(out, andA, andB, andC, andD, andE, andF, andG);
  and Y1(andA, notA, notB, notC, notD);
  and Y2(andB, notA, notB, C, notD);
  and Y3(andC, notA, notB, C, D);
  and Y4(andD, notA, B, C, notD);
  and Y5(andE, notA, B, C, D);
  and Y6(andF, A, notB, notC, notD);
  and Y7(andG, A, notB, C, notD);
  not Y1(notA, A);
  not Y2(notB, B);
  not Y3(notC, C);
  not Y3(notD, D);


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
      $dumpfile("Tabla04SOP_tb.vcd");
      $dumpvars(0,Tabla04SOP);
    end

endmodule
