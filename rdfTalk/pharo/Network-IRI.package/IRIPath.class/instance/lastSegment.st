accessing
lastSegment
	^ self isSlash
		ifTrue: [ nil ]
		ifFalse: [ segments last ]