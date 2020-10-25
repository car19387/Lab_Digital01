module testbench();

reg [11:0]address;
wire [7:0]D;

Mrom A1(address, D);

initial begin
#1
$display("\n");
$display(" Memoria ROM ");
$display("\n");
$display("|----------------|------------|");
$display("|    address     |    Dato    |");
$display("|----------------|------------|");
$monitor("|  %b  |  %b  |", address, D);

address = 12'b000000000000;
  #1 address = 12'b000000000001;
  #1 address = 12'b000000000010;
  #1 address = 12'b000000000011;
  #1 address = 12'b000000000100;
  #1 address = 12'b000000000101;
  #1 address = 12'b000000000110;
  #1 address = 12'b000000000111;
  #1 address = 12'b000000001000;
  #1 address = 12'b000000001001;
  #1 address = 12'b000000001010;
  end

initial
#200 $finish;

initial begin
  $dumpfile("Memoria_rom_tb.vcd");
  $dumpvars(0, testbench);
end
endmodule
