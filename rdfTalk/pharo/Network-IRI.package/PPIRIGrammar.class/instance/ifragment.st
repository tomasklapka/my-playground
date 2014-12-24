grammar
ifragment
	" ifragment = *( ipchar / '/' / '?' ) "
	^ (ipchar / $/ asParser / $? asParser) star flatten