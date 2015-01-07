as yet unclassified
ipv6AddressLeft1Elision
	" [ h16 ] '::' 4( h16colon ) ls32 "
	^ h16 optional, elision, (h16colon times: 4), ls32
