grammar
irelativeRef
	" irelative-ref  = irelative-part [ '?' iquery ] [ '#' ifragment ] "
	^ irelativePart, ($? asParser, iquery) optional, ($# asParser, ifragment) optional