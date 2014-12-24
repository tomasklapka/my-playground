as yet unclassified
testIpv6Address
	self fixtureValidIpv6Addresses
		do: [ :test | self parse: test rule: #ipv6Address ]