printing
printPathQueryFragmentOn: aStream encoded: aBoolean
	self printPathOn: aStream encoded: aBoolean.
	self hasQuery
		ifTrue: [ self printQueryOn: aStream ].
	self hasFragment
		ifFalse: [ ^ self ].
	aStream nextPut: $#.
	self encodeQuery: self fragment on: aStream