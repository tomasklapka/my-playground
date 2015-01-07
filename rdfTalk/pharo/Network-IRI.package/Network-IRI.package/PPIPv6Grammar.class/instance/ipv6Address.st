grammar
ipv6Address
"""
IPv6address = ipv6AddressNoElision
				/ ipv6AddressLeftElision
				/ ipv6AddressLeft1Elision
				/ ipv6AddressLeft2Elision
				/ ipv6AddressLeft3Elision
				/ ipv6AddressLeft4Elision
				/ ipv6AddressLeft5Elision
				/ ipv6AddressLeft6Elision
				/ ipv6AddressRightElision
"""
	^ ipv6AddressNoElision
	/ ipv6AddressLeftElision
	/ ipv6AddressLeft1Elision
	/ ipv6AddressLeft2Elision
	/ ipv6AddressLeft3Elision
	/ ipv6AddressLeft4Elision
	/ ipv6AddressLeft5Elision
	/ ipv6AddressLeft6Elision
	/ ipv6AddressRightElision
