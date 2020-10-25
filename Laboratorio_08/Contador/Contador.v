module contador(input wire clk, rst, en, blo,
  input wire [11:0]load,
  output reg [11:0]val);

    always @(posedge clk or posedge rst or posedge blo) begin

      if(rst == 1)
        val <= 12'b000000000000;

      else if(en == 1)
        val <= val + 1;

      else if(blo == 1)
        val <= load;

        end
endmodule
