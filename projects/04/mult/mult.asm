  @2
  M=0       // R2 = 0
  @i
  M=1       // i = 1
(LOOP)
  @i
  D=M
  @1
  D=D-M     // D = i - R1
  @END
  D;JGT     // D > 0ならばENDへ移動
  @0
  D=M
  @2
  M=M+D     // 結果を代入
  @i
  M=M+1
  @LOOP
  0;JMP     // LOOPへ移動
(END)
  @END
  0;JMP     // 無限ループ