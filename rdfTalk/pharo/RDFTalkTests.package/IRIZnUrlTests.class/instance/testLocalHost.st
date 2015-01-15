testing
testLocalHost
	self assert: 'http://localhost:8080/foo' asIRI isLocalHost.
	self assert: 'http://127.0.0.1:8080/foo' asIRI isLocalHost.
	self assert: 'http://LOCALHOST:8080/foo' asIRI isLocalHost.
	self deny: 'http://zn.stx.eu' asIRI isLocalHost.
	self deny: '' asIRI isLocalHost.