module main

import os

fn main() {
	path := os.args[1] or {
		println('vua <file>')
		return
	}
	input := os.read_file(path) ?
	tokens := lex(input) ?
	ast := parse(input, tokens) ?
	program := compile(input, ast) ?
	eval(program) ?
}
