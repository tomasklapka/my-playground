tests
testPath
	"path"
	self assert: (self iri1 path) equals: ''.
	self assert: (self iri2 path) equals: 'b/c/d/'.
	self assert: (self iri3 path) equals: 'b/c/d;p'.
	self assert: (self iri4 path) equals: 'relative/path'.
	self assert: (self iri5 path) equals: 'path'.
	self assert: (self iri6 path) equals: ''