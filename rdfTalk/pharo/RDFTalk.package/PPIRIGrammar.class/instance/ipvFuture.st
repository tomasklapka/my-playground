grammar
ipvFuture
	" IPvFuture = 'v' 1*HEXDIG '.' 1*( unreserved / sub-delims / ':' ) "
	^ $v asParser, #hex asParser plus, $. asParser, (unreserved / subDelims / $: asParser) plus