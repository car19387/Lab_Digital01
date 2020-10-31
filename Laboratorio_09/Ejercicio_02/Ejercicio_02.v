module FFD(input wire clk, EN, reset, input wire C, output reg D);
  always @ (posedge clk, posedge reset) begin

  if(reset)
    D <= 1'b0;

  else if(EN == 1)
    D <= C;
  end
endmodule


module FFT(input wire clk, EN, reset, output D);
  wire w;
  assign w = ~D;
  FFD A1(clk, EN, reset, w, D);
endmodule
