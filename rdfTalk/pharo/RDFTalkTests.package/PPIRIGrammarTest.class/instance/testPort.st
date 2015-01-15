as yet unclassified
testPort
	#( '0' '5' '80' '443' '8080' '65535' ) do: [ :test |
		self parse: test rule: #port ]