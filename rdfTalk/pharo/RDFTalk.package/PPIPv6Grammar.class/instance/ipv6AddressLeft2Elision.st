as yet unclassified
ipv6AddressLeft2Elision
	" [ *1( h16colon ) h16 ] '::' 3( h16colon ) ls32 "
	^ ((h16colon max: 1 lazy: (h16, elision)), h16) optional, elision, (h16colon times: 3), ls32
