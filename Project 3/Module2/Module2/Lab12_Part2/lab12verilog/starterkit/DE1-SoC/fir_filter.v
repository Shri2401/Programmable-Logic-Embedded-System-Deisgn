/////////////////////////////////
// Filter Block
/////////////////////////////////

module filter( clk, D, Q, QDiv);
parameter WIDTH = 24;
input clk;
input [WIDTH-1:0] D;
output reg[WIDTH-1:0] Q;
output reg [WIDTH-1:0] QDiv;

always @(posedge clk)
begin

Q <= D;
QDiv <= D / 8;

end
endmodule

/////////////////////////////////
// FIR FILTER Block
/////////////////////////////////
module fir_filter(
CLOCK_50, Data_In, Data_Out);

parameter DATA_WIDTH = 24;
parameter FILTER_LENGTH = 7;

input CLOCK_50;
input [DATA_WIDTH-1:0] Data_In;
output reg [DATA_WIDTH-1:0] Data_Out;

wire [DATA_WIDTH-1:0] out_wires [FILTER_LENGTH-1:0];
wire [DATA_WIDTH-1:0] div_wires [FILTER_LENGTH-1:0];

reg [DATA_WIDTH-1:0] sum;

generate

genvar i;

for(i = 0; i < FILTER_LENGTH; i= i+1) begin: gen_filter

// Instantiation
filter filter_inst(
	.clk(CLOCK_50),
	.D(i == 0 ? Data_In : out_wires[i - 1]),
	.Q(out_wires[i]),
	.QDiv(div_wires[i])
	);
	
	end
endgenerate
always @* begin
integer j;
sum = 0;

// Adder logic

for(j = 0; j < FILTER_LENGTH; j= j+1) begin: loop
 sum = sum + div_wires[j];
end
	Data_Out = sum + (out_wires[FILTER_LENGTH-1] / 8);
end

endmodule
