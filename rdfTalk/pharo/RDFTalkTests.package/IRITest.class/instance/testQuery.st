tests
testQuery
	"query"
	| expected |
	self assert: (self iri1 query) equals: nil.
	expected := ZnMultiValueDictionary new.
	expected add: '123' -> nil.
	expected at: 'aa' add: '1'.
	expected at: 'aa' add: '2'.
	self assert: (self iri2 query) equals: expected.
	expected := ZnMultiValueDictionary new.
	expected add: 'q' -> nil.
	self assert: (self iri3 query) equals: expected.
	self assert: (self iri4 query) equals: nil.
	expected := ZnMultiValueDictionary new.
	expected at: 'q' put: '1'.
	expected at: 'r' put: '2'.
	self assert: (self iri5 query) equals: expected.
	self assert: (self iri6 query) equals: nil