tests
testHost
	"host"
	self assert: (self iri1 host) equals: 'example.com'.
	self assert: (self iri2 host) equals: 'a.example.com'.
	self assert: (self iri3 host) equals: 'a'.
	self assert: (self iri4 host) equals: nil.
	self assert: (self iri5 host) equals: nil.
	self assert: (self iri6 host) equals: nil