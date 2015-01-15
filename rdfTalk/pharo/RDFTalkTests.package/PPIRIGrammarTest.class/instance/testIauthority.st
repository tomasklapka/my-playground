as yet unclassified
testIauthority
	#( 'example.com'
		'example.com:9999'
		'johndoe@example.com'
		'johndoe:johnspass@example.com'
		'johndoe@example.com:135'
		'johndoe:johnspass@example.com:8001' )
		do: [ :test | self parse: test rule: #iauthority ]