accessing
firstSegment
	^ self isSlash
		ifTrue: [ nil ]
		ifFalse: [ segments first ]