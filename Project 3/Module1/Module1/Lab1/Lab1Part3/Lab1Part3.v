module Lab1Part3(u,v,w,s,m);
input [1:0]u; 
input [1:0]v; 
input [1:0]w; 
input [1:0]s; 
output [1:0]m;
assign m = (s == 2'b00) ? u : (s == 2'b01) ? v : (s == 2'b10) ? w : 2'bzz;
endmodule