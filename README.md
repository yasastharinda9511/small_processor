# small_processor
## INTRODUCTION

This reprository is about small processor which is able to perform certain few arithmatic operations like addition,multiplication and substraction.The processor design based is based on the verilog HDL. The basic fundamentals of CISC based processor architecture is used to esign microinstructions and control signals. The tested clock rate for the design ewas 2Mhz.
    
## ARCHITECTURE OF THE PROCESSOR

1. 3 16bit general purpose registers(RA,RB,RC) are used
1. 16bit instruction register
1. 16bit Program counter
1. 128KB 16bit width programmable memory is used
1. A_bus,B_bus and C-buses are used as input and output bus for the ALU
1. Onlythe operatins are support this ALU

![Screenshot (501)](https://user-images.githubusercontent.com/37435024/99237884-1537ae80-281f-11eb-88f8-1c8e9577023f.png)

## Instructions 

Tables

|Instuction|Opcode|Description|
|---|---|---|
|R3<--R1+R2|0x000|addition of the value inside R1 and R3 put into the destition reg R3|
|R3<--R1-R2|0x001|substraction of the value inside R1 and R3 put into the destition reg R3|
|R3<--R1*R2|0x010|Multiplication of the value inside R1 and R3 put into the destition reg R3|

## Example instruction Code

```
instruction_memory[0]=16'b010011001xxxxxxx; MUL RA<--RA*RB
instruction_memory[1]=16'b000011001xxxxxxx; ADD RA<--RA*RB
instruction_memory[2]=16'b001011011xxxxxxx; SUB RC<--RA-RB
```
