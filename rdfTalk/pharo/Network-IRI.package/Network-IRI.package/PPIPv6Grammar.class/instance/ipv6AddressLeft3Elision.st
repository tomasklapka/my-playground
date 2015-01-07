as yet unclassified
ipv6AddressLeft3Elision
	" [ *2( h16colon ) h16 ] '::' 2( h16colon ) ls32 "
	^ ((h16colon max: 2 lazy: (h16, elision)), h16) optional, elision, (h16colon times: 2), ls32
