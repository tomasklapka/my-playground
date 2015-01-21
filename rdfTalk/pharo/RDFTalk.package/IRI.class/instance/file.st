accessing - path
file
	^ self isDirectoryPath
		ifTrue: [ String new ]
		ifFalse: [ self pathOrRoot last ]