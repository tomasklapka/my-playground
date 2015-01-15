tests
testIsAbsolute
	"isAbsolute"
	self assert: (self iri1 isAbsolute) equals: true.
	self assert: (self iri2 isAbsolute) equals: true.
	self assert: (self iri3 isAbsolute) equals: true.
	self assert: (self iri4 isAbsolute) equals: false.
	self assert: (self iri5 isAbsolute) equals: false.
	self assert: (self iri6 isAbsolute) equals: false