module FFD(input wire clk, EN, reset, input wire C, output reg D);
  always @ (posedge clk, posedge reset) begin

  if(reset)
    D <= 1'b0;

  else if(EN == 1)
    D <= C;
  end
endmodule


module FFD2(input wire clk, EN, reset, input wire [1:0]C, output [1:0]D);
  FFD A1(clk, EN, reset, C[0], D[0]);
  FFD A2(clk, EN, reset, C[1], D[1]);
endmodule


module FFD4(input wire clk, EN, reset, input wire [3:0]C, output [3:0]D);
  FFD2 B1(clk, EN, reset, C[3:2], D[3:2]);
  FFD2 B2(clk, EN, reset, C[1:0], D[1:0]);
endmodule
