testing
testMissingScheme
	| url |
	url := 'www.example.com' asIRI.
	self assert: url hasHost not.
	self assert: url pathSegments = (OrderedCollection with: 'www.example.com')
	