# nand2tetris
### 『[コンピュータシステムの理論と実践](https://www.oreilly.co.jp/books/9784873117126/)』で使用するプロジェクト

> - [ホームページ](https://www.nand2tetris.org/software)
> - [Nand2tetris Software Suiteのセットアップ方法（MacOS）](https://drive.google.com/file/d/1QDYIvriWBS_ARntfmZ5E856OEPpE4j1F/view)

## 第1章 - ブール論理 -
### 小題
- すべてのデジタル機器は回路からできている
- この章では基本となる6つの論理回路を作成していく

### ポイント
#### すべての論理回路はNANDゲートのみで実装できる
- ゲートと回路の実装方法はいくつも存在する
  - NORゲートだけからスタートすることも, AND・OR・NOTゲートからスタートすることも可能
  - 実装方法によりスピード, 消費電力, 製造コストなどに違いがある

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
    - OR8Way, MUX4Way16, MUX8Way16, DMUX4Way, DMUX8Way, 