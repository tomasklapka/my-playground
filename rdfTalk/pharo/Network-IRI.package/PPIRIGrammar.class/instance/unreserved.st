grammar
unreserved
	" unreserved = ALPHA / DIGIT / '-' / '.' / '_' / '~' "
	^ (#letter asParser / #digit asParser / $- asParser / $. asParser / $_ asParser / $~ asParser)