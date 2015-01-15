as yet unclassified
printOn: aStream
	aStream nextPutAll: 'IRIPath'.
	self isRoot
		ifTrue: [aStream nextPutAll: ' root']
		ifFalse:
			[1 to: self size do:
				[:i |
				aStream 
					nextPutAll: ' / ''';
				 	nextPutAll: (self at: i);
					nextPut: $']]