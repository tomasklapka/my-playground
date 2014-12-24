as yet unclassified
testIregName
	#( 'a' 'z' '0' '9' '-' '.' '_' '~' 'é' '%20' '!' '(' )
		do: [ :test | self parse: test rule: #iregName ].
	#(
		''
		'example.com'
		'www.éxample.com'
		'www.exam%20ple.com'
	) do: [ :test | self parse: test rule: #iregName ]