as yet unclassified
consumeStatement: toParse
	| s t |
	s := toParse.
	t := Triple new.
	(s at: 1) == $[
		ifTrue: [
			s := self consumeBlankNode: s subject: t.
			(s at: 1) == $. ifTrue: [ ^ s ] ]
		ifFalse: [
			(s at: 1) == $_
				ifTrue: [ s := self consumeKnownBlankNode: s subject: t ]
				ifFalse: [
					(s at: 1) == $(
						ifTrue: [ s := self consumeCollection: s subject: t ]
						ifFalse: [
							((s at: 1) == $<) ifTrue: [ s:= self consumeIRI: s subject: t ]
								ifFalse: [ s := self consumeQName: s subject: t ] ] ] ].
	s := self consumePredicateObjectList: (self skipWhiteSpace: s) subject: t.
	self expect: '.' in: s.
	^ s copyFrom: 2 to: s size