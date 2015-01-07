grammar
ipassword
	" *( iunreserved / pct-encoded / sub-delims ) "
	^ (iunreserved / pctEncoded / subDelims) star flatten