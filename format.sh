#!/usr/bin/env bash
function cfmt {
	if [[ $# -ne 1 ]]; then
		echo "Usage: cfmt <file>"
	else
		astyle \
			--style=kr \
			--lineend=linux \
			--convert-tabs \
			--preserve-date \
			--pad-header \
			--indent-switches \
			--align-pointer=name \
			--align-reference=name \
			--pad-oper \
			--suffix=none \
			$1
	fi
}

export -f cfmt
find . -type f -name '*.c' -exec bash -c 'cfmt "$0"' {} \;

