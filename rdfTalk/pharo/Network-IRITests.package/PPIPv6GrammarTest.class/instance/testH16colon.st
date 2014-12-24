as yet unclassified
testH16colon
	#( '0:' '01:' '0A:' '123:' 'ABCD:' 'EF00:' 'abcd:' ) do: [ :test |
		self parse: test rule: #h16colon ]