grammar
iunreserved
	" iunreserved = ALPHA / DIGIT / '-' / '.' / '_' / '~' / ucschar "
	^ #letter asParser / #digit asParser / $- asParser / $. asParser / $_ asParser / $~ asParser / ucschar