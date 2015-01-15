as yet unclassified
testIpchar
	#( 'a' 'z' '0' '9' '-' '.' '_' '~' 'é' '%20' '!' '(' ':' '@' )
		do: [ :test | self parse: test rule: #ipchar ]