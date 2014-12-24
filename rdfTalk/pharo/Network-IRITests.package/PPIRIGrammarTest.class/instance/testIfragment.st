as yet unclassified
testIfragment
	#( '123'
		'abc'
		'def/456'
		'?'
		'???////???abcde12345' )
		do: [ :test | self parse: test rule: #ifragment ]