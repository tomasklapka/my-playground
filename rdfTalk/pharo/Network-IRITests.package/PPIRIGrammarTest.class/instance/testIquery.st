as yet unclassified
testIquery
	#(
		'éq=1&r=2&s=3'
	) do: [ :test | self parse: test rule: #iquery ]