tests
testPort
	"port"
	self assert: (self iri1 port) equals: nil.
	self assert: (self iri2 port) equals: 8080.
	self assert: (self iri3 port) equals: nil.
	self assert: (self iri4 port) equals: nil.
	self assert: (self iri5 port) equals: nil.
	self assert: (self iri6 port) equals: nil