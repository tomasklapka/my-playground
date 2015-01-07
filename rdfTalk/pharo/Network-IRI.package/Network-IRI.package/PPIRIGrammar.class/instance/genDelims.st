grammar
genDelims
	" gen-delims = ':' / '/' / '?' / '#' / '[' / ']' / '@' "
	^ ($: asParser / $/ asParser / $? asParser / $# asParser / $[ asParser / $] asParser / $@ asParser)