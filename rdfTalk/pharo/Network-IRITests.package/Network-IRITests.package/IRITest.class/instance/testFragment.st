tests
testFragment
	"fragment"
	self assert: (self iri1 fragment) equals: nil.
	self assert: (self iri2 fragment) equals: '455'.
	self assert: (self iri3 fragment) equals: nil.
	self assert: (self iri4 fragment) equals: nil.
	self assert: (self iri5 fragment) equals: '35'.
	self assert: (self iri6 fragment) equals: nil