# テキストの文字数を数えて出力するコマンド

![test](https://github.com/takumi1009/robosys2025/actions/workflows/test.yml/badge.svg)

---

## 🔹 概要

- このコマンドは、標準入力から受け取ったテキストの文字数（改行を除く）を数えて出力します。
- 日本語文字にも対応しており、パイプ処理でも使用できます。

---

## 🔹 使用例

```bash
$ echo "Hello World" | ./test_countchar.py
```

出力：

```bash
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
$ chmod +x test_countchar.py
```

---

## 🔹実行方法

```bash
$ echo "abc" | ./test_countchar.py
```

```bash
3
```

---

改行を含む入力も処理できます（改行はカウントされません）：

```bash
$ echo -e "abc\ndef" | ./test_countchar.py
```

```bash 
6
```

---

## 🔹テスト

- 手動テスト

- 以下のコマンドで全テストを実行できます。

```bash
$ bash ./test.bash
```

---

出力例：

- ✅ PASS: 'Hello' → 5
- ✅ PASS: 'Hello World' → 11
- ✅ PASS: 'こんにちは' → 5
- ✅ PASS: 'abc\ndef' → 6
- ✅ PASS: '' → 0
- 🎉 All tests passed!


## 必要なソフトウェア
- Python テスト済みバージョン: 3.7〜3.12
- bash（テストスクリプトで使用）
- *標準ライブラリのみを使用（追加のインストールは不要）

## テスト環境

- OS:Ubuntu 22.04.5 LTS

## ライセンス
- このソフトウェアはBSD-3-Clauseライセンスの下で公開されます。
- 外部ライブラリ依存なし（標準ライブラリのみ）

## 補足

- 標準入力が空の場合は 0 を出力します。
- 改行はカウント対象外です。


© 2025 Komiya Takumi
