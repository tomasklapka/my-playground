as yet unclassified
consumeLiteral: toParse subject: aSubject
	| s char value hunt end longchar token re |
	s := toParse.
	char := s at: 1.
	value := ''.
	hunt := true.
	end := 1.
	longchar := String with: char with: char with: char.
	(s copyFrom: 1 to: 3) == longchar
		ifTrue: [
			end := 3.
			[ hunt ] whileTrue: [
				end := s indexOf: longchar startingAt: end.
				hunt := ((s at: end-1) == $\) ifTrue: [ end := end + 1 ]
			].
			value := s copyFrom: 4 to: end-1.
			s := s copyFrom: value size + 7 to: s size
		]
		ifFalse: [
			[ hunt ] whileTrue: [
				end := s indexOf: char startingAt: end + 1.
				hunt := ((s at: end-1) == $\)
			].
			value := s copyFrom: 2 to: end-1.
			s := s copyFrom: value size + 3 to: s size
		].
	value := R2RTurtleParser decodeString: value.
	(s at: 1) == $@
		ifTrue: [
			(re := self simpleObjectToken) matchesPrefix: s.
			token := re subexpression: 1.
			aSubject object: (environment createLiteral: value language: (token copyFrom: 2 to: token size)).
			s := s copyFrom: token size + 1 to: s size.
		]
		ifFalse: [ (s at: 1) == $^
			ifTrue: [
				(re := self simpleObjectToken) matchesPrefix: s.
				token := re subexpression: 1.
				token := token copyFrom: 3 to: token size.
				(token at: 1) == $<
					ifTrue: [ aSubject object: (environment createLiteral: value dataType: (token copyFrom: 2 to: token size - 1)) ]
					ifFalse: [ aSubject object: (environment createLiteral: value dataType: token) ].
				s := s copyFrom: token size + 3 to: s size
			]
			ifFalse: [
				aSubject object: (environment createLiteral: value)
			]
		].
	^ s