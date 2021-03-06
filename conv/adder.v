`timescale 1ns / 1ps
// adder for convolution

module adder#(parameter WIDTH = 9)
(
	input clk,
	input rst_n,
    input signed [2 * WIDTH - 1:0] a,
    input signed [2 * WIDTH - 1:0] b,

    output wire signed [2 * WIDTH - 1:0] out
);

reg [2 * WIDTH - 1:0] sum;

always@(posedge clk)
begin
	if(rst_n)
	begin
		if(a[2*WIDTH - 1] ^ b[2*WIDTH - 1] == 0)
		begin
			sum[2*WIDTH - 2:0] <= b[2*WIDTH - 2:0] + a[2*WIDTH - 2:0];
			sum[2*WIDTH - 1] <= a[2*WIDTH - 1];
		end
		if(a[2*WIDTH - 1] ^ b[2*WIDTH - 1] == 1)
		begin
			sum[2*WIDTH - 2:0] <= (b[2*WIDTH - 2:0] > a[2*WIDTH - 2:0])?(b[2*WIDTH - 2:0] - a[2*WIDTH - 2:0]):(a[2*WIDTH - 2:0] - b[2*WIDTH - 2:0]);
			sum[2*WIDTH - 1] <= (b[2*WIDTH - 2:0] > a[2*WIDTH - 2:0])?(b[2*WIDTH - 1]):(a[2*WIDTH - 1]);
		end
	end
end

assign out = sum;

endmodule