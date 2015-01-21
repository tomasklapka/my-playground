accessing - instance variables
path: anIRIPath
	path := anIRIPath isString
		ifTrue: [ IRIPath from: anIRIPath ]
		ifFalse: [ anIRIPath ]