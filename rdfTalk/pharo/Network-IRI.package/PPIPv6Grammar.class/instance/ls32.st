as yet unclassified
ls32
	" ls32 = ( h16 ':' h16 ) / IPv4address "
	^ PPIPv4Grammar new ipv4Address / (h16, $: asParser, h16)