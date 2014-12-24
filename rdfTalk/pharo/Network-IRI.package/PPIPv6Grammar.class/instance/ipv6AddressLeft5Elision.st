as yet unclassified
ipv6AddressLeft5Elision
	" [ *4( h16colon ) h16 ] '::' ls32 "
	^ (((h16colon max: 4 lazy: (h16, elision))), h16) optional, elision, ls32
