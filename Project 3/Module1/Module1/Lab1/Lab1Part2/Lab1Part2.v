module Lab1Part2(x,y,s,m,s_out);
input [3:0]x; 
input [3:0]y; 
input s; 
output s_out;
output reg [3:0] m;
assign s_out = s;

always @(*)
begin
	if(s == 1)
		 m <= y;
	else if(s == 0)
		 m <= x;
end
//assign m = (~s & x) | (s & y);

endmodule