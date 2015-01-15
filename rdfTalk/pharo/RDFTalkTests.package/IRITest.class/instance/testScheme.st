tests
testScheme
	"scheme"
	self assert: (self iri1 scheme) equals: 'http'.
	self assert: (self iri2 scheme) equals: 'https'.
	self assert: (self iri3 scheme) equals: 'http'.
	self assert: (self iri4 scheme) equals: nil.
	self assert: (self iri5 scheme) equals: nil.
	self assert: (self iri6 scheme) equals: nil