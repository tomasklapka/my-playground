as yet unclassified
testSkipWhiteSpace
	self assert: (self parser skipWhiteSpace: '     	
	
				test') equals: 'test'.
	self assert: (self parser skipWhiteSpace: '		a b c ') equals: 'a b c '