#!/bin/sh

assert "./jlox tests/var.lox" equals "A"$'\n'
assert "./jlox tests/logical_operators.lox" equals "hi"$'\n'"yes"$'\n'
