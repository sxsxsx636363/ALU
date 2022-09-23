module csa_16_last_bits(a, b, c_in, sum, c_out);
input [15:0] a, b;
input c_in;
output [15:0] sum;
output [1:0] c_out;
wire [1:0] c_out2,c_out3;
wire [7:0] sum1,sum2;
csa_8_bits csa_8_1(a[7:0], b[7:0], c_in, sum[7:0], c_out1);
csa_8__last_bits csa_8_2(a[15:8], b[15:8], 1'b1, sum1, c_out2);
csa_8__last_bits csa_8_3(a[15:8], b[15:8], 1'b0, sum2, c_out3);
assign sum[15:8] = c_out1 ? sum1 : sum2;
assign c_out = c_out1 ? c_out2 : c_out3;
endmodule

