<a id="markdown-nand2tetris" name="nand2tetris"></a>
# nand2tetris
<a id="markdown-『コンピュータシステムの理論と実践httpswwworeillycojpbooks9784873117126』で使用するプロジェクト" name="『コンピュータシステムの理論と実践httpswwworeillycojpbooks9784873117126』で使用するプロジェクト"></a>
## 『[コンピュータシステムの理論と実践](https://www.oreilly.co.jp/books/9784873117126/)』で使用するプロジェクト

> - [ホームページ](https://www.nand2tetris.org/software)
> - [Nand2tetris Software Suiteのセットアップ方法（MacOS）](https://drive.google.com/file/d/1QDYIvriWBS_ARntfmZ5E856OEPpE4j1F/view)

<!-- TOC -->

- [nand2tetris](#nand2tetris)
  - [『[コンピュータシステムの理論と実践](https://www.oreilly.co.jp/books/9784873117126/)』で使用するプロジェクト](#『コンピュータシステムの理論と実践httpswwworeillycojpbooks9784873117126』で使用するプロジェクト)
  - [第1章 - ブール論理 -](#第1章---ブール論理--)
    - [やったこと](#やったこと)
    - [ポイント](#ポイント)
      - [すべての論理回路はNANDゲートのみで実装できる](#すべての論理回路はnandゲートのみで実装できる)
      - [論理回路の種類](#論理回路の種類)
  - [2章 - ブール算術 -](#2章---ブール算術--)
    - [やったこと](#やったこと-1)
    - [ポイント](#ポイント-1)
  - [3章 - 順序回路 -](#3章---順序回路--)
    - [やったこと](#やったこと-2)
    - [ポイント](#ポイント-2)
  - [4章 - 順序回路 -](#4章---順序回路--)
    - [やったこと](#やったこと-3)
    - [ポイント](#ポイント-3)
    - [つまづいたところ](#つまづいたところ)

<!-- /TOC -->
<a id="markdown-第1章---ブール論理--" name="第1章---ブール論理--"></a>
## 第1章 - ブール論理 -
<a id="markdown-やったこと" name="やったこと"></a>
### やったこと
- この章では基本となる6つの論理回路を作成していく

<a id="markdown-ポイント" name="ポイント"></a>
### ポイント
<a id="markdown-すべての論理回路はnandゲートのみで実装できる" name="すべての論理回路はnandゲートのみで実装できる"></a>
#### すべての論理回路はNANDゲートのみで実装できる
- ゲートと回路の実装方法はいくつも存在する
  - NORゲートだけからスタートすることも, AND・OR・NOTゲートからスタートすることも可能
  - 実装方法によりスピード, 消費電力, 製造コストなどに違いがある

<a id="markdown-論理回路の種類" name="論理回路の種類"></a>
#### 論理回路の種類
1. 基本論理ゲート
    - NOT, AND, OR, XOR, MUX(マルチプレクサ), DMUX(デマルチプレクサ)
    - マルチプレクサとは3入力のゲート. 2入力に「選択ビット」が加わる.
2. 多ビットの基本ゲート
    - 「バス」と呼ばれる複数の配列を扱うためのゲート
    - ここでは16ビットのバスを扱っている
    - NOT16, AND16, OR16, MUX16
3. 多入力の基本ゲート
    - 任意の数の入力を受け入れるためのゲート
    - OR8Way, MUX4Way16, MUX8Way16, DMUX4Way, DMUX8Way

<a id="markdown-2章---ブール算術--" name="2章---ブール算術--"></a>
## 2章 - ブール算術 -
<a id="markdown-やったこと-1" name="やったこと-1"></a>
### やったこと
- 半加算器、全加算器、インクリメンタ、ALU（算術論理演算機）を作成する

<a id="markdown-ポイント-1" name="ポイント-1"></a>
### ポイント
- ALUは1章で作成した論理回路のみで作成することができる

<a id="markdown-3章---順序回路--" name="3章---順序回路--"></a>
## 3章 - 順序回路 -
<a id="markdown-やったこと-2" name="やったこと-2"></a>
### やったこと
- 記憶装置（レジスタ、メモリ）の作成

<a id="markdown-ポイント-2" name="ポイント-2"></a>
### ポイント
- 順序回路の概念を理解するのが難しかった
- 指定のアドレスに値を格納できるRAM
- DFFについてはモジュール化されていたのでハードウェアでどのように実装しているのか疑問に思った
- つまづいたDFFとレジスタをまとめておく
    - DFF
        - 常に前回の入力値を出力するout(t)=in(t-1)
    - レジスタ
        - load=0の場合にはout(t)=in(t-1)
        - load=1の場合にはout(t)=out(t-1)
        - **loadは情報を更新するか否か**

<a id="markdown-4章---順序回路--" name="4章---順序回路--"></a>
## 4章 - 順序回路 -
<a id="markdown-やったこと-3" name="やったこと-3"></a>
### やったこと
- 

<a id="markdown-ポイント-3" name="ポイント-3"></a>
### ポイント
- アセンブリから機械語に変換するプログラムをアセンブラと呼ぶ
    - Assembly language [ ADD R3, R1] -> [Binary] 1010 0011 0001 

<a id="markdown-つまづいたところ" name="つまづいたところ"></a>
### つまづいたところ
- mult.asmファイルの先頭で以下のようなコメントを残したままコンパイル, テスト実行するとテスト途中でエラーが発生
  - コメントアウトを削除するとエラーが消えた
```
// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
  ```