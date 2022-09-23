module alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);

   input [31:0] data_operandA, data_operandB;
   input [4:0] ctrl_ALUopcode, ctrl_shiftamt;

   output [31:0] data_result;
   output isNotEqual, isLessThan, overflow;
	wire [31:0] OpB;
	wire [1:0] c_out;

   // YOUR CODE HERE //
	//if substraction, change the sign of operandB
	xor(OpB[0],ctrl_ALUopcode[0],data_operandB[0]);
	xor(OpB[1],ctrl_ALUopcode[0],data_operandB[1]);
	xor(OpB[2],ctrl_ALUopcode[0],data_operandB[2]);
	xor(OpB[3],ctrl_ALUopcode[0],data_operandB[3]);
	xor(OpB[4],ctrl_ALUopcode[0],data_operandB[4]);
	xor(OpB[5],ctrl_ALUopcode[0],data_operandB[5]);
	xor(OpB[6],ctrl_ALUopcode[0],data_operandB[6]);
	xor(OpB[7],ctrl_ALUopcode[0],data_operandB[7]);
	xor(OpB[8],ctrl_ALUopcode[0],data_operandB[8]);
	xor(OpB[9],ctrl_ALUopcode[0],data_operandB[9]);
	xor(OpB[10],ctrl_ALUopcode[0],data_operandB[10]);
	xor(OpB[11],ctrl_ALUopcode[0],data_operandB[11]);
	xor(OpB[12],ctrl_ALUopcode[0],data_operandB[12]);
	xor(OpB[13],ctrl_ALUopcode[0],data_operandB[13]);
	xor(OpB[14],ctrl_ALUopcode[0],data_operandB[14]);
	xor(OpB[15],ctrl_ALUopcode[0],data_operandB[15]);
	xor(OpB[16],ctrl_ALUopcode[0],data_operandB[16]);
	xor(OpB[17],ctrl_ALUopcode[0],data_operandB[17]);
	xor(OpB[18],ctrl_ALUopcode[0],data_operandB[18]);
	xor(OpB[19],ctrl_ALUopcode[0],data_operandB[19]);
	xor(OpB[20],ctrl_ALUopcode[0],data_operandB[20]);
	xor(OpB[21],ctrl_ALUopcode[0],data_operandB[21]);
	xor(OpB[22],ctrl_ALUopcode[0],data_operandB[22]);
	xor(OpB[23],ctrl_ALUopcode[0],data_operandB[23]);
	xor(OpB[24],ctrl_ALUopcode[0],data_operandB[24]);
	xor(OpB[25],ctrl_ALUopcode[0],data_operandB[25]);
	xor(OpB[26],ctrl_ALUopcode[0],data_operandB[26]);
	xor(OpB[27],ctrl_ALUopcode[0],data_operandB[27]);
	xor(OpB[28],ctrl_ALUopcode[0],data_operandB[28]);
	xor(OpB[29],ctrl_ALUopcode[0],data_operandB[29]);
	xor(OpB[30],ctrl_ALUopcode[0],data_operandB[30]);
	xor(OpB[31],ctrl_ALUopcode[0],data_operandB[31]);

//call 32 bits csa
	csa_32_bits csa_32(data_operandA[31:0], OpB[31:0], ctrl_ALUopcode[0], data_result[31:0], c_out);
	
	//check overflow
	xor(overflow,c_out[0],c_out[1]); 
	
	//check lessthan
	and(isLessThan, data_result[31], ctrl_ALUopcode[0]);
	
	

endmodule
