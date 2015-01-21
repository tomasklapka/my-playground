tests
testPath
	"path"
	self assert: (self iri1 path) equals: IRIPath / ''.
	self assert: (self iri2 path) equals: IRIPath / 'b' / 'c' / 'd' / ''.
	self assert: (self iri3 path) equals: IRIPath / 'b' / 'c' / 'd;p'.
	self assert: (self iri4 path) equals: IRIPath / 'relative' / 'path'.
	self assert: (self iri5 path) equals: IRIPath / 'path'.
	self assert: (self iri6 path) equals: IRIPath / ''