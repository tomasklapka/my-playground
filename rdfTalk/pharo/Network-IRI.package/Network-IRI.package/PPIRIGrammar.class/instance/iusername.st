grammar
iusername
	" *( iunreserved / pct-encoded / sub-delims ) "
	^ (iunreserved / pctEncoded / subDelims) star flatten