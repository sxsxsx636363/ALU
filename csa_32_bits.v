module csa_32_bits(a, b, c_in, sum, c_out);
input [31:0] a, b;
input c_in;
output [31:0] sum;
output [1:0] c_out;
wire [1:0] c_out2,c_out3;
wire [15:0] sum1,sum2;
csa_16_bits csa_16_1(a[15:0], b[15:0], c_in, sum[15:0], c_out1);
csa_16_last_bits csa_16_2(a[31:16], b[31:16], 1'b1, sum1, c_out2);
csa_16_last_bits csa_16_3(a[31:16], b[31:16], 1'b0, sum2, c_out3);
assign sum[31:16] = c_out1 ? sum1 : sum2;
assign c_out = c_out1 ? c_out2 : c_out3;
endmodule
