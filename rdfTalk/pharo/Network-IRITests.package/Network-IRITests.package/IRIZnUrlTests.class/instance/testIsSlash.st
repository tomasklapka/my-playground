testing
testIsSlash
	self assert: '' asIRI isSlash.
	self assert: '/' asIRI isSlash.
	self assert: '/foo' asIRI isSlash not.
	self assert: 'http://host/foo' asIRI isSlash not.