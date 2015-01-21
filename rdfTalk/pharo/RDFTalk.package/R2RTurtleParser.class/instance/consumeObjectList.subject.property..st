as yet unclassified
consumeObjectList: toParse subject: aSubject property: aProperty
	| s char continue o token re |
	s := toParse.
	char := s at: 1.
	continue := true.
	[ continue ] whileTrue: [
		o := Triple new.
		char == $[
			ifTrue: [ s := self consumeBlankNode: s subject: o ]
			ifFalse: [ char == $_
				ifTrue: [ s := self consumeKnownBlankNode: s subject: o ]
				ifFalse: [ char == $(
					ifTrue: [ s := self consumeCollection: s subject: o ]
					ifFalse: [ char == $<
						ifTrue: [ s := self consumeIRI: s subject: o ]
						ifFalse: [ (char == $' or: [ char == $" ])
							ifTrue: [ s := self consumeLiteral: s subject: o ]
							ifFalse: [
								((re := self simpleObjectToken) matchesPrefix: s) ifTrue: [ token := re subexpression: 1. ] ifFalse: [ token := '' ].
								(token at: token size) == $.
									ifTrue: [ token := token copyFrom: 1 to: token size ].
								(token == 'false' or: token == 'true')
									ifTrue: [ o object: (environment createLiteral: token dataType: (environment resolve: 'xsd:boolean')) ]
									ifFalse: [ (token includesSubstring: ':')
										ifTrue: [
											o object: (environment createNamedNode: (environment resolve: token)).
											o object ifNil: [ Error signal: 'Prefix not defined for ', token ]
										]
										ifFalse: [ (self tokenInteger matches: token)
											ifTrue: [ o object: (environment createLiteral: token dataType: (environment resolve: 'xsd:integer')) ]
											ifFalse: [ (self tokenDouble matches: token)
												ifTrue: [ o object: (environment createLiteral: token dataType: (environment resolve: 'xsd:double')) ]
												ifFalse: [ (self tokenDecimal matches: token)
													ifTrue: [ o object: (environment createLiteral: token dataType: (environment resolve: 'xsd:decimal')) ]
													ifFalse: [ Error signal: 'Unrecognised token in ObjectList: ', token ]
												]
											]
										]
									].
								s := s copyFrom: token size + 1 to: s size
							]
						]
					]
				]
			].
		self add: (environment createTripleFromSubject: aSubject object predicate: aProperty object: o object).
		s := self skipWhiteSpace: s.
		(continue := ((s at: 1) == $,))
			ifTrue: [ s := self skipWhiteSpace: (s copyFrom: 2 to: s size) ].
	].
	^ s