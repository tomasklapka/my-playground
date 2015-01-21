as yet unclassified
consumeBlankNode: toParse subject: aSubject
	| s |
	s := toParse.
	aSubject object: environment createBlankNode.
	s := self skipWhiteSpace: (s copyFrom: 2 to: s size).
	((s at: 1) == ']') ifTrue: [ ^ s copyFrom: 2 to: s size ].
	s := self skipWhiteSpace: (self consumePredicateObjectList: s subject: aSubject).
	self expect: ']' in: s.
	^ self skipWhiteSpace: (s copyFrom: 2 to: s size)