as yet unclassified
parseStatements: aStatements
	| s |
	s := aStatements asString.
	[ s size > 0 ] whileTrue: [
		s := self skipWhiteSpace: s.
		(s size == 0) ifTrue: [ ^ true ].
		(
			(
				((s at: 1) == $@)
				or:
				((s copyFrom: 1 to: 4) asUppercase = 'BASE')
			)
		 	or:
				((s copyFrom: 1 to: 6) asUppercase = 'PREFIX')
		)
			ifTrue: [ s := self consumeDirective: s ]
			ifFalse: [ s := self consumeStatement: s ].
		s := self skipWhiteSpace: s
	].
	^ true