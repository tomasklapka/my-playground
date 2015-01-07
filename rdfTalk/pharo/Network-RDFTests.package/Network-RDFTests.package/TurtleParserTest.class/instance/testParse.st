as yet unclassified
testParse
	| graph |
	graph := self parser parse: self fixtureCard1 base: 'http://example.com/'.
	self assert: (graph isKindOf: Graph) equals: true.
	Transcript show: graph toString.
	Transcript cr.