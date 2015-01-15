tests
testResolveReference
	"resolveReference: absoluteURI"
	self assert: ((self iri1 resolveReference: 'http://xyz.example.org/123') asString) equals: 'http://xyz.example.org/123'.
	self assert: ((self iri2 resolveReference: 'http://xyz.example.org/123') asString) equals: 'http://xyz.example.org/123'.
	"resolveReference: path"
	self assert: ((self iri1 resolveReference: '/a/b/c') asString) equals: 'http://example.com/a/b/c'.
	self assert: ((self iri2 resolveReference: '/a/b/c') asString) equals: 'https://user:pass@a.example.com:8080/a/b/c'.
	"resolveReference: authority"
	self assert: ((self iri1 resolveReference: '//example.org/1?x') asString) equals: 'http://example.org/1?x'.
	self assert: ((self iri2 resolveReference: '//example.org/1?x') asString) equals: 'https://example.org/1?x'.
	"resolveReference: relative"
	self assert: ((self iri1 resolveReference: 'b/c.js') asString) equals: 'http://example.com/b/c.js'.
	self assert: ((self iri2 resolveReference: 'b/c.js') asString) equals: 'https://user:pass@a.example.com:8080/b/c/d/b/c.js'.
	"resolveReference: decend"
	self assert: ((self iri1 resolveReference: '../..') asString) equals: 'http://example.com/'.
	self assert: ((self iri2 resolveReference: '../..') asString) equals: 'https://user:pass@a.example.com:8080/b/'.
	"resolveReference: query"
	self assert: ((self iri1 resolveReference: '?query') asString) equals: 'http://example.com/?query'.
	self assert: ((self iri2 resolveReference: '?query') asString) equals: 'https://user:pass@a.example.com:8080/b/c/d/?query'