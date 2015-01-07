grammar
iauthority
	" iauthority = [ iuserinfo '@' ] ihost [ ':' port ] "
	^ (iuserinfo, $@ asParser) optional, ihost, ($: asParser, port) optional