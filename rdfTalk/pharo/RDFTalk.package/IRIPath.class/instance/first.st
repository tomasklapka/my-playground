accessing
first
	^ self size > 0
		ifTrue: [ self at: 1 ]
		ifFalse: [ nil ]