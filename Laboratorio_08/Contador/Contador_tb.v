module testbench();
  reg clk, rst, en, blo;
  reg [11:0]load;
  wire [11:0]val;

contador A1(clk, rst, en, blo, load, val);

initial begin
#1
$display("\n");
$display(" Contador de 12 bits ");
$display("\n");
$display("|-------------------------|--------------|");
$display("|clk  rst  en  blo  load  |     val      |");
$display("|-------------------------|--------------|");
$monitor("|%b  %b  %b  %b  %b | %b |", clk, rst, en, blo, load, val);


clk = 0; rst = 0; en = 0; blo = 0; load = 12'b000000000000;
#1 rst = 0;
#1 rst = 0;
#1 rst = 1;
#1 rst = 0;
#2 blo = 1; load = 12'b000001000010;
#1 blo = 0; en = 1;
#1 en = 1;
end

always
#1 clk = ~clk;

initial
#200 $finish;

initial begin
  $dumpfile("Contador_tb.vcd");
  $dumpvars(0, testbench);
end
endmodule
