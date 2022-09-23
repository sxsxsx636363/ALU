# Checkpoint 1

## a. 
netID: xs106
## b. 
I use a 32-bits CSA to perform both addition and subtraction  The sign of data_operandB will be change if the Opcode is 1, which is done by connect Opcode to all bits of data_operandB into XOR gates seperatly. 
  
And also the carry-in value of the first bit is connected to the ALU Opcode, when the Opcode is 1 it perform subtraction, therefore, it can be seens as the 1's added in to the input B during changing the sign of B.  Since the amount of improved speed will decreased with the number of divided levels and the more space will be consumed and the more cost, the 32 bits CSA is divided into 5 level components, the smallest units after Full adder is 4-bits RCA. 
1. Full adder

2. (4-bits RCA/4-bits last RCA)

3. (8-bits CSA/8-bits last CSA)

4. (16-bits CSA/16-bits last CSA)

5. 32 bits CSA

## c. 
One of the bugs of this project is this project cannot detect the overflow of each input data_operandA and data_operandB. So when doing subtraction, if the input data_operandB has a decimal value -2^16, the overflow will happen. This is because we do subtraction by converting the number into opposite sign and add them together, which in this case is 2^16. However, the largest positive value the 32bits signed integer can represent is (2^16-1). Therefore, when we convert -2^16 to 2^16 for subtraction, overflow will happend but the project cannot detected, since we didn't design to check the single input overflow.    

Also, the results calculation will become 1000 0000 0000 0000 0000 0000 0000 0000 + 1000 0000 0000 0000 0000 0000 0000 0000 and the result become 0000 0000 0000 0000 0000 0000 0000 0000. And overflow should happened. But in this project, the overflow signal remain on 0, which is wrong.


