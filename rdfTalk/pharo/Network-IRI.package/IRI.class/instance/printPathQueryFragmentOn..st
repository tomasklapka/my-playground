printing
printPathQueryFragmentOn: stream
	self hasPath 
		ifTrue: [ 
			self isUsingSegmentSeparator
				ifTrue: [ self printPathOn: stream ]
				ifFalse: [ self printPathWithoutSlashesOn: stream ] ].
	self hasQuery
		ifTrue: [ self printQueryOn: stream ].
	self hasFragment
		ifFalse: [ ^ self ].
	stream nextPut: $#.
	self encodeQuery: self fragment on: stream