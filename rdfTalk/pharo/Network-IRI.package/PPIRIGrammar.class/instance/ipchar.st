grammar
ipchar
	" iunreserved / pct-encoded / sub-delims / ':' / '@' "
	^ iunreserved / pctEncoded / subDelims / $: asParser / $@ asParser