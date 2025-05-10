#!/bin/sh

assert "./jlox tests/var.lox" equals "A"$'\n'
assert "./jlox tests/logical_operators.lox" equals "hi"$'\n'"yes"$'\n'
assert "./jlox tests/while.lox" equals "1"$'\n'"2"$'\n'"3"$'\n'
assert "./jlox tests/for.lox" equals "0"$'\n'"1"$'\n'"2"$'\n'
