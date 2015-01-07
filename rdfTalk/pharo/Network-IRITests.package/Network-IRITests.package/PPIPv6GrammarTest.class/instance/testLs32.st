as yet unclassified
testLs32
	#( '0:0' 'FFFF:0000' 'E:C0A' '1234:ABCD' 'AB:CD' 'EF:00' 'abcd:ef01' 
		'0.0.0.0' '255.255.255.255' '127.0.0.0' ) do: [ :test |
		self parse: test rule: #ls32 ]