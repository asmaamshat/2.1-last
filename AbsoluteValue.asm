@R0
D=M         //d = r0

//check if r0 is negative
@NEG        //jump to NEG if r0 < 0
D;JLT

// if r0 is positive
@R1
M=D         //r1 = r0
@R2
M=0         //r2 =not negative

@R3
M=0         //r3 = 0 (no overflow)
@END        //jump to END
0;JMP       //unconditional jump



(NEG)
@R2
M=1         //r2 = is negative

//check for overflow
@R0
D=M         //D =r0
@32768      //constant 32768
D=D+A       //d= r0 + 32768
@OVER       //jump to OVER
D;JEQ       //if D= 0

//absolute value: r1 = -r0
@R0
D=M         //D = r0
D=-D        //D = -r0
@R1
M=D         //r1 = -r0

//no overflow
@R3
M=0         // r3 =no overflow
@END        //jump to end
0;JMP       //unconditional jump

(OVER)

//overflow case
@R0
D=M         //D = r0
@R1
M=D         // r1 = r0
@R3
M=1         // r3 = 1

(END)
@END
0;JMP       //infinite loop
