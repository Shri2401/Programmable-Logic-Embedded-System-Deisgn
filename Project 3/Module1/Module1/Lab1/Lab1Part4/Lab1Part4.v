module Lab1Part4(
  input [1:0] c,
  output reg [6:0] HEX0
);

always @* 
begin
  case(c)
    2'b00: HEX0 = 7'b0100001; // Display 'd'
    2'b01: HEX0 = 7'b0000110; // Display 'E'
    2'b10: HEX0 = 7'b1111001; // Display '1'
    2'b11: HEX0 = 7'b1111111; // Display blank
    default: HEX0 = 7'b1111111; // Default Blank
  endcase
end

endmodule
