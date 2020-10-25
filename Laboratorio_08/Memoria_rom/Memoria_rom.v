// Memoria ROM de 4Kx8
module Mrom(input wire [11:0]address,
  output wire [7:0]D);

  reg[7:0] Mrom[0:4095];

  initial begin
    $readmemb("Mrom.list", Mrom);
  end

  assign D = Mrom[address]; 
endmodule
