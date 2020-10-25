module ALU(input wire [3:0]D, Q,
            input wire [2:0]S,
            output reg [3:0]Y);

    always @ (D, Q, S) begin
      case (S)
        3'b000: Y <= D & Q ;
        3'b001: Y <= D | Q ;
        3'b010: Y <= D + Q ;

        3'b011: Y <= Y ;

        3'b100: Y <= D & (~Q) ;
        3'b101: Y <= D | (~Q) ;
        3'b110: Y <= D - Q ; 
        3'b111: Y <= (D < Q) ? 1:0 ;

      default: Y <= 4'b0000 ;
    endcase
  end
endmodule
