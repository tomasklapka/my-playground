as yet unclassified
consumeIRI: toParse subject: aSubject
	| s index |
	s := toParse.
	self expect: '<' in: s.
	index := s findString: '>'.
	aSubject object: (environment createNamedNode: (base resolveReference: (R2RTurtleParser decodeString: (s copyFrom: 2 to: index-1)))).
	^ s copyFrom: (index + 1) to: s size