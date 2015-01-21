accessing - path
pathOrRoot
	^ path isNil
		ifTrue: [ IRIPath root ]
		ifFalse: [ path ]