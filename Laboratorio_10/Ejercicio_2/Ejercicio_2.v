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

module ALU();
