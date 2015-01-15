grammar
subDelims
	" sub-delims     = '!' / '$' / '&' / ''' / '(' / ')' / '*' / '+' / ',' / ';' / '=' "
	^ $! asParser / $$ asParser / $& asParser / $' asParser / $( asParser / $) asParser / $* asParser / $+ asParser / $, asParser / $; asParser / $= asParser