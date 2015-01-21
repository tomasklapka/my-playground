as yet unclassified
consumeQName: toParse subject: aSubject
	| qname re |
	(re := self simpleToken) matchesPrefix: toParse.
	qname := re subexpression: 1.
	aSubject object: (environment createNamedNode: (environment resolve: qname)).
	^ toParse copyFrom: qname size to: toParse size