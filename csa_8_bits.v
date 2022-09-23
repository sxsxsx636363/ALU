module csa_8_bits(a, b, c_in, sum, c_out);
input [7:0] a, b;
input c_in;
output [7:0] sum;
output c_out;
wire c_out2,c_out3;
wire [3:0] sum1,sum2;
rca_4_bits rca_7_1(a[3:0], b[3:0], c_in, sum[3:0], c_out1);
rca_4_bits rca_7_2(a[7:4], b[7:4], 1'b1, sum1, c_out2);
rca_4_bits rca_7_3(a[7:4], b[7:4], 1'b0, sum2, c_out3);
assign sum[7:4] = c_out1 ? sum1:sum2;
assign c_out = c_out1 ? c_out2:c_out3;
endmodule
