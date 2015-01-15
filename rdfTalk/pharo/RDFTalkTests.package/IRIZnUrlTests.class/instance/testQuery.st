testing
testQuery
	| url |
	url := 'http://foo.com/test?q' asIRI.
	self assert: url printString = 'http://foo.com/test?q'