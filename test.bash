#!/bin/bash
# SPDX-FileCopyrightText: 2025 Komiya Takumi
# SPDX-License-Identifier: BSD-3-Clause

set -eu

chmod +x ./countchar.py

test_case () {
    input="$1"
    expected="$2"
    result=$(echo -ne "$input" | ./countchar.py)
    if [ "$result" = "$expected" ]; then
        echo "✅ PASS: '$input' → $result"
    else
        echo "❌ FAIL: '$input' → got '$result', expected '$expected'" >&2
        exit 1
    fi
}

test_case "Hello" 5
test_case "Hello World" 11
test_case "こんにちは" 5
test_case "abc\ndef" 6
test_case "" 0

echo "🎉 All tests passed!"

