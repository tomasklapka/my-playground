accessing - path
directory
	^ self isDirectoryPath
		ifTrue: [ self pathOrRoot ]
		ifFalse: [ self pathOrRoot / '..' ]