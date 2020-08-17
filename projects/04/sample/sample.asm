// Java
// int i = 1;
// int sum = 0;
// while (i <= 10) {
//   sum += i;
//   i++;
// }

// Hack(Assembly)
  @1
  M=1
  @2
  M=0
(LOOP)
  @1
  D=M
  @10
  D=D-A
  @END
  D;JGT
  @1
  D=M
  @2
  M=D+M
  @1
  M=M+1
  @LOOP
  0;JMP
(END)
  @END
  0;JMP