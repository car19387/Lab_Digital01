module testbench();

reg p1, p2, p3;
wire Y1, Y2, Y3, Y4, Y5, Y6;
wire Vcc, GND;
assign Vcc = 1;
assign GND = 0;

Tabla1_MUX2_1 M1(p1, p2, p3, Y1);
Tabla1_MUX4_2 M2(p1, p2, p3, Y2);
Tabla1_MUX8_3 M3(p1, p2, p3, Vcc, GND, Y3);
Tabla2_MUX2_1 M4(p1, p2, p3, Y4);
Tabla2_MUX4_2 M5(p1, p2, p3, Vcc, GND, Y5);
Tabla2_MUX8_3 M6(p1, p2, p3, Vcc, GND, Y6);

initial begin
  $display("Tabla 1 MUX 2:1");
  $display("A B C | Y");
  $display("------|--");
  $monitor("%b %b %b | %b", p1, p2, p3, Y1);
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
  $display("Tabla 1 MUX 4:1");
  $display("A B C | Y");
  $display("------|--");
  $monitor("%b %b %b | %b", p1, p2, p3, Y2);
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
  #16
  $display("\n");
  $display("Tabla 1 MUX 8:1");
  $display("A B C | Y");
  $display("------|--");
  $monitor("%b %b %b | %b", p1, p2, p3, Y3);
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
  #24
  $display("\n");
  $display("Tabla 2 MUX 2:1");
  $display("A B C | Y");
  $display("------|--");
  $monitor("%b %b %b | %b", p1, p2, p3, Y4);
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
  #32
  $display("\n");
  $display("Tabla 2 MUX 4:1");
  $display("A B C | Y");
  $display("------|--");
  $monitor("%b %b %b | %b", p1, p2, p3, Y5);
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
  #40
  $display("\n");
  $display("Tabla 2 MUX 8:1");
  $display("A B C | Y");
  $display("------|--");
  $monitor("%b %b %b | %b", p1, p2, p3, Y6);
      p1 = 0; p2 = 0; p3 = 0;
    #1 p1 = 0; p2 = 0; p3 = 1;
    #1 p1 = 0; p2 = 1; p3 = 0;
    #1 p1 = 0; p2 = 1; p3 = 1;
    #1 p1 = 1; p2 = 0; p3 = 0;
    #1 p1 = 1; p2 = 0; p3 = 1;
    #1 p1 = 1; p2 = 1; p3 = 0;
    #1 p1 = 1; p2 = 1; p3 = 1;
end

initial
  #72 $finish;

initial begin
  $dumpfile("Muxes_tb.vcd");
  $dumpvars(0, testbench);
end

endmodule
