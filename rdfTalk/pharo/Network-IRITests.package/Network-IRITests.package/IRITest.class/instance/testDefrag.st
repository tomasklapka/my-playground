tests
testDefrag
	"defrag"
	self assert: (self iri1 defragment asString) equals: 'http://example.com/'.
	self assert: (self iri2 defragment asString) equals: 'https://user:pass@a.example.com:8080/b/c/d/?123&aa=1&aa=2'.
	self assert: (self iri3 defragment asString) equals: 'http://a/b/c/d;p?q'.
	self assert: (self iri4 defragment asString) equals: '/relative/path'.
	self assert: (self iri5 defragment asString) equals: '/path?q=1&r=2'.
	self assert: (self iri6 defragment asString) equals: '/'