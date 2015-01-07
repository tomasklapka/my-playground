as yet unclassified
ipv6AddressLeft6Elision
	" [ *5( h16colon ) h16 ] '::' h16 "
	^ (((h16colon max: 5 lazy: (h16, elision))), h16) optional, elision, h16
