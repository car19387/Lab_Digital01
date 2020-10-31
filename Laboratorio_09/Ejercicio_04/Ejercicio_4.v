module BT(input wire EN,
  input wire [3:0]S,
  output wire [3:0]Q);

  assign Q = (EN) ? S : 4'bz; 
endmodule
