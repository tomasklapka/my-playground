testing
isDirectoryPath
	^ self hasPath 
		ifTrue: [ path last isEmptyOrNil ]
		ifFalse: [ true ]
	