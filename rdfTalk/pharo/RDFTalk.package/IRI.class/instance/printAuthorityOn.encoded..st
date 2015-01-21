printing
printAuthorityOn: aStream encoded: aBoolean
	self hasUsername ifTrue: [
		aStream nextPutAll: (aBoolean
			ifTrue: [ self class encode: self username ]
			ifFalse: [ self username ]).
		self hasPassword ifTrue: [
			aStream nextPut: $:.
			aStream nextPutAll: (aBoolean
				ifTrue: [ self class encode: self password ]
				ifFalse: [ self password ]) ].
		aStream nextPut: $@ ].
	self hasHost ifTrue: [
		aStream nextPutAll: (aBoolean
			ifTrue: [ self class encode: self host ]
			ifFalse: [ self host ]) ].
	self hasPort ifTrue: [
		aStream nextPut: $:; print: self port ]