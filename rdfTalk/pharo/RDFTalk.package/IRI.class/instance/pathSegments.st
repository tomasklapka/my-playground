accessing - path
pathSegments
	^ path isNil
		ifTrue: [ #() ]
		ifFalse: [ path segments ]