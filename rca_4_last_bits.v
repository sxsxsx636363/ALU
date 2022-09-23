//Reserve the carry out value of the last two bits
module rca_4_last_bits(a, b, c_in, sum, c_out);
	input [3:0] a, b; 
	input c_in;
	output [3:0] sum;
	output [1:0]c_out;
	wire w1, w2, w3;
full_adder a1(a[0], b[0], c_in, sum[0], w1);
full_adder a2(a[1], b[1], w1, sum[1], w2);
full_adder a3(a[2], b[2], w2, sum[2], c_out[0]);
full_adder a4(a[3], b[3], c_out[0], sum[3], c_out[1]);
endmodule
