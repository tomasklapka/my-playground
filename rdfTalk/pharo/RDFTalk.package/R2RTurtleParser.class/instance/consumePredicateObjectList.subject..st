as yet unclassified
consumePredicateObjectList: toParse subject: aSubject
	| s continue predicate property re |
	s := toParse.
	continue := true.
	[ continue ] whileTrue: [
		(re := self simpleToken) matchesPrefix: s.
		predicate := re subexpression: 1.
		property := nil.
		predicate = 'a'
			ifTrue: [ property := environment createNamedNode: (environment resolve: 'rdf:type') ]
			ifFalse: [
				((predicate at: 1) == $<)
					ifTrue: [
						property := environment createNamedNode: (
							base resolveReference: (R2RTurtleParser decodeString: (
								predicate copyFrom: 2 to: (predicate indexOf: $>)))) ]
					ifFalse: [
						((predicate at: 1) == $] or: [(predicate at: 1) == $.])
							ifTrue: [ ^ s ]
							ifFalse: [ property := environment createNamedNode: (environment resolve: predicate) ] ]
			].
		s := self skipWhiteSpace: (s copyFrom: predicate size + 1 to: s size).
		s := self consumeObjectList: s subject: aSubject property: property.
		(continue := (s at: 1) == $;) ifTrue: [ s := self skipWhiteSpace: (s copyFrom: 2 to: s size) ].
	].
	^ s