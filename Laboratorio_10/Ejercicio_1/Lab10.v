module FFD4(input wire clk, reset, EN,
  input wire [3:0]C,
  output reg [3:0]D);

always @ (posedge clk, posedge reset) begin

  if(reset) begin
    D <= 4'b0;
  end

  else if (EN) begin
    D <= C;
  end
end
endmodule


module FETCH(input wire clk, reset, EN, input wire [7:0]D, output wire[3:0]instr, oprnd);

  FFD4 A1(clk, reset, EN, D[7:4], instr);
  FFD4 B1(clk, reset, EN, D[3:0], oprnd);
endmodule


module contador(input wire clk, rst, EN, blo,
  input wire [11:0]load,
  output reg [11:0]val);

  always @(posedge clk or posedge rst or posedge blo) begin

    if(rst == 1)
      val <= 12'b0;

    else if(EN == 1)
      val <= val + 1;

    else if(blo == 1)
      val <= load;
end
endmodule


module Mrom(input wire [11:0]address,
  output wire [7:0]D);

  reg[7:0] Mrom[0:4095];


  initial begin
    $readmemb("Mrom.list", Mrom);
  end

  assign D = Mrom[address];
endmodule


module integrador(input wire clk, reset, ENPC, ENF, blo, input wire [11:0]load, output wire [7:0]P_B, output wire [3:0]instr, output wire [3:0]oprnd);
  wire [11:0]PC;
  contador C1(clk, reset, ENPC, blo, load, PC);
  Mrom C2(PC, P_B);
  FETCH C3(clk, reset, ENF, P_B, instr, oprnd);

endmodule
