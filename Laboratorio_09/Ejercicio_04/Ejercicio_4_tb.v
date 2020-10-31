module testbench();
  reg EN;
  reg [3:0]S;
  wire [3:0]Q;

  BT A1(EN, S, Q);

  initial begin
    #1
    $display("\n");
    $display("Buffer triestado de 4 bits");
    $display("\n");
    $display("------------|--------|");
    $display(" EN   S      |   Q    |");
    $display("------------|--------|");
    $monitor("%b   %b    |  %b  |", EN, S, Q);

    #1 EN = 0; S = 4'b0000;
    #5 EN = 1;
    #5 S = 4'b1111;
    #5 EN = 0;
    end

  initial
    #25 $finish;

  initial begin
    $dumpfile("Ejercicio_4_tb.vcd");
    $dumpvars(0, testbench);
  end
endmodule
