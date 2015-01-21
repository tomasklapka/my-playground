accessing
last
	^ self size > 0
		ifTrue: [ self at: self size ]
		ifFalse: [ nil ]