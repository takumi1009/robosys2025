# テキストの文字数を数えて出力するコマンド
![test](https://github.com/takumi1009/robosys2025/actions/workflows/test.yml/badge.svg)
---

## 🔹 概要

- このコマンドは、標準入力から受け取ったテキストの文字数（改行を除く）を数えて出力します。

---

## 🔹 使用例

```bash
$ echo "Hello World" | ./countchar
11
```

---

## 🔹インストール手順

```bash
$ git clone https://github.com/takumi1009/robosys2025.git
$ cd robosys2025
```

実行権限を付与
```bash
$ chmod +x countchar
```

---

## 🔹実行方法

```bash
$ echo "abc" | ./countchar
3
```

---

改行を含む入力も処理できます（改行はカウントされません）：

```bash
$ echo -e "abc\ndef" | ./countchar
 6
```

---


## 補足
- 標準入力が空の場合は０を出力します。
- 改行はカウント対象外です。

## 必要なソフトウェア
- Python テスト済みバージョン: 3.7〜3.12
- bash（テストスクリプトで使用）
- OS:Ubuntu 22.04.5 LTS

## ライセンス
- このソフトウェアはBSD-3-Clauseライセンスの下で公開されます。
- 外部ライブラリ依存なし（標準ライブラリのみ）

© 2025 Komiya Takumi
