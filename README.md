# test_countcharコマンド

![test](https://github.com/takumi1009/robosys2025/actions/workflows/test.yml/badge.svg)

---

## 🔹 概要

このコマンドは、**標準入力から受け取ったテキストの文字数（改行を除く）**を数えて出力します。
日本語文字にも対応しており、パイプ処理でも使用できます。

---

## 🔹 使用例

echo "Hello World" | ./test_countchar.py
11

---

## 🔹インストール手順

git clone https://github.com/takumi1009/robosys2025.git
cd robosys2025
chmod +x test_countchar.py

---

## 🔹実行方法

echo "abc" | ./test_countchar.py
3

改行を含む入力も処理できます（改行はカウントされません）：

echo -e "abc\ndef" | ./test_countchar.py
6

---

## 🔹テスト

手動テスト

以下のコマンドで全テストを実行できます。

bash ./test.bash

出力例：

✅ PASS: 'Hello' → 5
✅ PASS: 'Hello World' → 11
✅ PASS: 'こんにちは' → 5
✅ PASS: 'abc\ndef' → 6
✅ PASS: '' → 0
🎉 All tests passed!

自動テスト（GitHub Actions）

GitHubにpushすると、自動的に全Pythonバージョン（3.7〜3.12）でテストが実行されます。
テスト結果は本ページ上部のバッジ画像で確認できます。

## 必要なソフトウェア
Python テスト済みバージョン: 3.7〜3.12
bash（テストスクリプトで使用）

## テスト環境

OS:Ubuntu 22.04.5 LTS
シェル: bash

## ライセンス
SPDX-License-Identifier: BSD-3-Clause
© 2025 Komiya Takumi
ファイル内にSPDX表記済み
外部ライブラリ依存なし（標準ライブラリのみ）

##🔹 補足

標準入力が空の場合は 0 を出力します。
改行はカウント対象外です。
エラー時には標準エラー出力にエラーメッセージを表示し、終了コード1を返します。

© 2025 Komiya Takumi
