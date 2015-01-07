as yet unclassified
testScheme
	#( 'http' 'telnet' 'a1' 'b+-.' ) do: [ :test |
		self parse: test rule: #scheme ]