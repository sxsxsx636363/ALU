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
There is a bug in this project(has been corrected in the latest version), which the 2's completion of the negative number is not finished before addition. e.g. -2^16-(-2^16) after 2's complmentation, the calculation supposed to become

   1000 0000 0000 0000 0000 0000 0000 0000 

   1000 0000 0000 0000 0000 0000 0000 0000 
   
-----------------------------------------------

 1 0000 0000 0000 0000 0000 0000 0000 0000
   
 This result has an overflow. But in this project, the overflow shows 0. This is because in this design, during the s'2 complement, the +1 process after converting the 0's/1's is done by adding the carry-in bits = 1 in the first bit, which calculation actually become: 
                                         
                                         1

   1000 0000 0000 0000 0000 0000 0000 0000


   0111 1111 1111 1111 1111 1111 1111 1111
                                 
---------------------------------------------
  1 0000 0000 0000 0000 0000 0000 0000 0000
 
 In this case the the carry-in and carry out bit of the MSB is both 1, therefore overflow = X0R of CO and CI is 0, incorrect results happened. 
 
 To overcome this situation, an OR gate need to be added between XOR gate output and the CO of the MSB. But this may introduce another error in this project due to the hardware design: when we do 0 - 0 = 0, which overflow should not happened, but it will show up incorrectly:
                                                                
                                          1

    0000 0000 0000 0000 0000 0000 0000 0000

    1111 1111 1111 1111 1111 1111 1111 1111

---------------------------------------------------------

  1 0000 0000 0000 0000 0000 0000 0000 0000

