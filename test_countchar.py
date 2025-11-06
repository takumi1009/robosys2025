#!/usr/bin/env python3
# SPDX-FileCopyrightText: 2025 Komiya Takumi
# SPDX-License-Identifier: BSD-3-Clause

import sys

def main():
    try:
        text = sys.stdin.read()
        count = len(text.replace("\n", ""))
        print(count)
    except Exception as e:
        print(f"Error: {e}", file=sys.stderr)
        sys.exit(1)

if __name__ == "__main__":
    main()
