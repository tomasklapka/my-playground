grammar
iregName
	" ireg-name = *( iunreserved / pct-encoded / sub-delims ) "
	^ (subDelims / pctEncoded / iunreserved) star