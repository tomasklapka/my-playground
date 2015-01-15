grammar
scheme
	" scheme = ALPHA *( ALPHA / DIGIT / '+' / '-' / '.' ) "
	^ #letter asParser, ( #letter asParser / #digit asParser / $+ asParser / $- asParser / $. asParser) star