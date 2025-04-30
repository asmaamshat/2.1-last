
@R0
D=M     //D =r0
D=!D    //rD =not r0
@R3
M=D     //r3 = not R0

@R1
D=M     //D = r1
D=!D    //D =not r1
@R4
M=D     // r4 = not r1

@R4
D=M     //D = not r1
@R0
D=D&M   //D = r0 and not r1
@R5
M=D     //r5 = r0 and not r1

@R3
D=M     //D =not r0
@R1
D=D&M   //D = not r0 and r1

@R5
D=D|M   //D =(r0 and not r1) or (not r0 and r1)

@R2
M=D     // r2 = xor result