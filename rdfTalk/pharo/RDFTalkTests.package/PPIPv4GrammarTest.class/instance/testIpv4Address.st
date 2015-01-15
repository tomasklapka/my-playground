as yet unclassified
testIpv4Address
	#(
		'0.0.0.0'
		'0.255.0.255'
		'123.12.1.0'
		'127.0.0.1'
		'99.58.7.54'
		'255.255.255.255'
	) do: [ :test | self parse: test rule: #ipv4Address ]