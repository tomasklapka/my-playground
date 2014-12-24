as yet unclassified
testIhierpart
	#( '//example.com'
		'//example.com:9999/'
		'//johndoe@example.com/segment'
		'//johndoe:johnspass@example.com/segment/'
		'//johndoe@example.com:135/segment/segment/'
		'//johndoe:johnspass@example.com:8001/segment/seg:ment/' )
		do: [ :test | self parse: test rule: #ihierpart ]