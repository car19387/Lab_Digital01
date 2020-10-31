module testbench();
  reg clk, EN, reset;
  wire Q;

  always
    #1 clk = ~clk;

  FFT B1(clk, EN, reset, Q);

initial begin
  #1
  $display("\n");
  $display(" Flip Flop tipo T de 1 bit ");
  $display("\n");
  $display("---------------|-----|");
  $display(" clk  EN  reset |  Q  |");
  $display("---------------|-----|");
  $monitor("%b    %b    %b    |  %b  |", clk, EN, reset, Q);

  #1 clk = 0; reset = 1; EN = 0;
  #5 reset = 0; EN = 1;
  #5 reset = 0; EN = 1;
  #5 EN = 0;
  end

initial
  #20 $finish;

initial begin
  $dumpfile("Ejercicio_02_tb.vcd");
  $dumpvars(0, testbench);
  end
endmodule
