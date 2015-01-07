testing
testAuthority
	self assert: 'http://localhost:8080/foo/bar/doc.txt' asIRI authority = 'localhost:8080'.
	self assert: 'http://www.google.com?q=Smalltalk' asIRI authority = 'www.google.com'