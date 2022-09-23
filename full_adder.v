module full_adder(a, b, c_in, sum, c_out);
	input a, b, c_in; 
	output sum, c_out;
	wire xor1_out, and1_out, and2_out;
	xor(xor1_out, a, b);
	xor(sum, xor1_out, c_in);
	and(and1_out, xor1_out, c_in);
	and(and2_out, a, b);
	or(c_out, and1_out, and2_out);
endmodule

