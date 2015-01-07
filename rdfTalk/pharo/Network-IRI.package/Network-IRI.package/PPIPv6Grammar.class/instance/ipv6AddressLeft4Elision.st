as yet unclassified
ipv6AddressLeft4Elision
	" [ *3( h16colon ) h16 ] '::' h16colon ls32 "
	^ (((h16colon max: 3 lazy: (h16, elision))), h16) optional, elision, h16colon, ls32
