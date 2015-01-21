as yet unclassified
skipWhiteSpace: aString
	| s |
	s := aString.
	[ self isWhiteSpace: (s at: 1 ifAbsent: [ '' ] ) ]
		whileTrue: [ 
			s := self initialWhiteSpace copy: s replacingMatchesWith: ''.
			((s at: 1 ifAbsent: [ '' ] ) == '#') ifTrue: [ s := self initialComment copy: s replacingMatchesWith: '' ]
		].
	^ s