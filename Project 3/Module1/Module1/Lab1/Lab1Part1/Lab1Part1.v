module Lab1Part1(SW, LEDR);
input [9:0] SW; // Slide Switches
output [9:0] LEDR; // Red LEDs
assign LEDR = SW;
endmodule