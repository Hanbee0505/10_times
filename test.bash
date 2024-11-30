#!/bin/bash
# SPDX-FileCopyrightText: 2024 Hanbee Choi
# SPDX-License-Identifier: BSD-3-Clause

# テストケース 1: 数字の入力
output=$(echo "5" | ./10_times)
expected="50"
if [ "$output" == "$expected" ]; then
    echo "Test 1 passed"
else
    echo "Test 1 failed: expected '$expected' but got '$output'"
fi

# テストケース 2: 文字列の入力
output=$(echo "abc" | ./10_times)
expected="正確な数値ではありません。"
if [ "$output" == "$expected" ]; then
    echo "Test 2 passed"
else
    echo "Test 2 failed: expected '$expected' but got '$output'"
fi

# テストケース 3: 数字の入力 (0の場合)
output=$(echo "0" | ./10_times)
expected="0"
if [ "$output" == "$expected" ]; then
    echo "Test 3 passed"
else
    echo "Test 3 failed: expected '$expected' but got '$output'"
fi

# テストケース 4: 空入力
output=$(echo "" | ./10_times)
expected="正確な数値ではありません。"
if [ "$output" == "$expected" ]; then
    echo "Test 4 passed"
else
    echo "Test 4 failed: expected '$expected' but got '$output'"
fi
