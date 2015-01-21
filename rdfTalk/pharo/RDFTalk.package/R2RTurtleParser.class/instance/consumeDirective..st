as yet unclassified
consumeDirective: toParse
	| s i prefix |
	s := toParse.
	i := 0.
	((s copyFrom: 2 to: 7) = 'prefix') ifTrue: [
		s := self skipWhiteSpace: (s copyFrom: 8 to: s size).
		i := s indexOf: $:.
		prefix := s copyFrom: 1 to: i-1.
		s := self skipWhiteSpace: (s copyFrom: (i := i+1)+1 to: s size).
		self expect: '<' in: s.
		environment setPrefix: prefix IRI: ((base resolveReference: (R2RTurtleParser decodeString: (s copyFrom: 2 to: (i := s indexOf: $>)-1)))).
		s := self skipWhiteSpace: (s copyFrom: (i := i+1) to: s size).
		self expect: '.' in: s.
		s := s copyFrom: 2 to: s size.
		^ s
	].
	((s copyFrom: 2 to: 6) asUppercase = 'PREFIX') ifTrue: [
		s := self skipWhiteSpace: (s copyFrom: 8 to: s size).
		i := s indexOf: ':'.
		prefix := s copyFrom: 1 to: i-1.
		s := self skipWhiteSpace: (s copyFrom: (i := i+1)+1 to: s size).
		self expect: '<' in: s.
		environment setPrefix: prefix IRI: ((base resolveReference: (R2RTurtleParser decodeString: (s copyFrom: 2 to: (i := s indexOf: $>)-1)))).
		s := self skipWhiteSpace: (s copyFrom: (i := i+1)+1 to: s size).
		^ s
	].
	((s copyFrom: 2 to: 5) = 'base') ifTrue: [
		s := self skipWhiteSpace: (s copyFrom: 6 to: s size).
		self expect: '<' in: s.
		base := base resolveReference: (R2RTurtleParser decodeString: (s copyFrom: 2 to: (i := s indexOf: $>)-1)).
		s := self skipWhiteSpace: (s copyFrom: (i := i+1)+1 to: s size).
		self expect: '.' in: s.
		s := s copyFrom: 2 to: s size.
		^ s
	].
	((s copyFrom: 1 to: 4) asUppercase = 'BASE') ifTrue: [
		s := self skipWhiteSpace: (s copyFrom: 6 to: s size).
		self expect: '<' in: s.
		base := base resolveReference: (R2RTurtleParser decodeString: (s copyFrom: 2 to: (i := s indexOf: $>)-1)).
		s := self skipWhiteSpace: (s copyFrom: (i := i+1)+1 to: s size).
		^ s
	].
	Error signal: 'Unknown directive: ', (s copyFrom: 1 to: 50)
	