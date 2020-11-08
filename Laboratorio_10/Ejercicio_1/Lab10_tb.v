module testbench();
  reg clk, reset, ENPC, ENF, blo;
  reg [11:0]load;
  wire [7:0]P_B;
  wire[3:0]instr;
  wire [3:0]oprnd;

always
    #1 clk = ~clk;

  integrador U(clk, reset, ENPC, ENF, blo, load, P_B, instr, oprnd);

  initial begin
    #1
    $display("\n");
    $display(" Programa ");
    $display("\n");
    $display("-----------------------------|--------------------------|");
    $display("Clk reset ENPC ENF blo load  |   P_B     instr    oprnd |");
    $display("-----------------------------|--------------------------|");
    $monitor("%b  %b  %b  %b  %b  %b  | %b   %b    %b  |", clk, reset, ENPC, ENF, blo, load, P_B, instr, oprnd);

    clk = 0; reset = 1; ENF = 0; ENPC = 0; blo = 0; load = 12'b000000000000;
    #2 reset = 0; ENF = 1; ENPC = 1; blo = 0;
    #2 reset = 0; ENF = 1; ENPC = 1; blo = 0;
    #2 reset = 0; load = 12'b000000000100;
    #2 reset = 0; ENF = 1; ENPC = 1; blo = 1;
    #3 reset = 0; ENF = 0; ENPC = 0; blo = 0;
  end

  initial
    #35 $finish;

initial begin
  $dumpfile("Lab10_tb.vcd");
  $dumpvars(0, testbench);
end
endmodule
