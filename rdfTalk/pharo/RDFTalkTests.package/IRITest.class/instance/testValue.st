tests
testValue
	"value"
	self assert: (self iri1 asString) equals: 'http://example.com/'.
	self assert: (self iri2 asString) equals: 'https://user:pass@a.example.com:8080/b/c/d/?123&aa=1&aa=2#455'.
	self assert: (self iri3 asString) equals: 'http://a/b/c/d;p?q'.
	self assert: (self iri4 asString) equals: '/relative/path'.
	self assert: (self iri5 asString) equals: '/path?q=1&r=2#35'.
	self assert: (self iri6 asString) equals: '/'