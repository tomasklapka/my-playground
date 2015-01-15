as yet unclassified
testIsegment
	#(
		'' 'a' 'z' '0' '9' '-' '.' '_' '~' 'é' '%20' '!' '(' ':' '@'
		'Program+Files' '~john' 'rosé!' 'john.doe@example.com'
	) do: [ :test | self parse: test rule: #isegment ]