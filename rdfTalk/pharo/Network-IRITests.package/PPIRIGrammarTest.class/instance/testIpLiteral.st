as yet unclassified
testIpLiteral
	#(
		'[dead::beaf]'
		'[::1]'
		'[0:1:2:3:4:5:6:7]'
		'[0001::2345:123.123.250.1]'
		'[vF.4:5]'
		'[v10.5]'
	) do: [ :test | self parse: test rule: #ipLiteral ]