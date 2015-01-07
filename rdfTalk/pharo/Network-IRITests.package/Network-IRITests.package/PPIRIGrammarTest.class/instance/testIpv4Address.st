as yet unclassified
testIpv4Address
	#(
		'0.0.0.0'
		'0.1.2.3'
		'255.101.87.1'
		'255.255.255.255'
	) do: [ :test | self parse: test rule: #ipv4Address ]