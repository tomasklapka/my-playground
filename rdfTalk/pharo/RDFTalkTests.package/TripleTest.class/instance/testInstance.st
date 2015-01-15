as yet unclassified
testInstance
	| triple |
	triple := environment createTripleFromSubject: self fixtureSubject predicate: self fixturePredicate object: self fixtureObject.
	self assert: (triple isKindOf: Triple) equals: true.
	self assert: (triple subject equals: self fixtureSubject) equals: true.
	self assert: (triple predicate equals: self fixturePredicate) equals: true.
	self assert: (triple object equals: self fixtureObject) equals: true.
	self assert: triple asString equals: '<http://example.com/#me> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://xmlns.com/foaf/0.1/Person> .'