as yet unclassified
consumeKnownBlankNode: toParse subject: aSubject
	| s bName re |
	s := toParse.
	self expect: '_:' in: s.
	(re := self simpleToken) matchesPrefix: (s copyFrom: 3 to: s size).
	bName := re subexpression: 1.
	aSubject object: (self getBlankNode: bName).
	^ s copyFrom: bName size + 3 to: s size