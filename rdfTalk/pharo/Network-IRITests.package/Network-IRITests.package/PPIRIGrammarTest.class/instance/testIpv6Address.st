as yet unclassified
testIpv6Address
	#(
		'1aaa:2bbb:3ccc:4eee:5f:6e:70:FF'
		'dead::beaf'
		'::1'
		'::'
	) do: [ :test | self parse: test rule: #ipv6Address ]