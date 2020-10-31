module FFD(input wire clk, EN, reset, input wire C, output reg D);
  always @ (posedge clk, posedge reset) begin

  if(reset)
    D <= 1'b0;

  else if(EN == 1)
    D <= C;
  end
endmodule


module FFJK(input wire clk, EN, reset, input wire J, K, output Q);
  wire D, QN, KN, Y1, Y2;

  not(QN, Q);
  not(KN, K);
  and(Y1, KN, Q);
  and(Y2, J, QN);
  or(D, Y1, Y2);

  FFD A1(clk, EN, reset, D, Q);
endmodule
