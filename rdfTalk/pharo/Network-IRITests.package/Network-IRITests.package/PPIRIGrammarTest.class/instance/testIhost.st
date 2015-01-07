as yet unclassified
testIhost
	#(
		'example.com'
		'www.éxample.com'
		'127.0.0.1'
		'localhost'
		'[dead::beaf]'
		'[0123:4567::dead:beaf]'
		'[0001::2345:123.123.250.1]'
		'[vF.45]'
	) do: [ :test | self parse: test rule: #ihost ]