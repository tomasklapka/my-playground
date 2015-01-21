accessing - path
lastPathSegment
	^ self isSlash
		ifTrue: [ nil ]
		ifFalse: [ self pathOrRoot last ]