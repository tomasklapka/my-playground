as yet unclassified
ipv6AddressRightElision
	" [ *6( h16colon ) h16 ] '::' "
	^ (((h16colon max: 6 lazy: (h16, elision))), h16) optional, elision
