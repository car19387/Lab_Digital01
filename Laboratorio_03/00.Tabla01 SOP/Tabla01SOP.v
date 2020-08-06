module Tabla01SOP();

reg A, B, C;
wire andA, andB, andC, notA, notB, notC, notD, andE, out;

or  O1(out, andA, andB, andC, andD, andE);
and Y1(andA, notA, notB, notC);
and Y2(andB, notA, B, notC);
and Y3(andC, A, notB, notC);
and Y4(andD, A, notB, C);
and Y5(andE, A, B, C);
not N1(notA, A);
not N2(notB, B);
not N3(notC, C);

  initial begin
    $display("A B C | Y");
    $display("-------");
    $monitor("%b %b %b | %b", A, B, C, out);
    A = 0; B = 0; C=0;
    #1 A = 0; B = 0; C=1;
    #1 A = 0; B = 1; C=0;
    #1 A = 0; B = 1; C=1;
    #1 A = 1; B = 0; C=0;
    #1 A = 1; B = 0; C=1;
    #1 A = 1; B = 1; C=0;
    #1 A = 1; B = 1; C=1;
    #1 $finish;
 end

initial
  begin
    $dumpfile("Tabla01SOP_tb.vcd");
    $dumpvars(0,Tabla01SOP);
  end

endmodule
