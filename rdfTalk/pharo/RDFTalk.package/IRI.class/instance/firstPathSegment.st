accessing - path
firstPathSegment
	^ self isSlash
		ifTrue: [ nil ]
		ifFalse: [ self pathOrRoot first ]