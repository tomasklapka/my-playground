printing
printPathOn: aStream encoded: aBoolean
	path isNil ifTrue: [ ^ self ].
	path isAbsolute ifTrue: [ aStream nextPut: $/ ].
	path segments
		do: [ :segment |
			segment isNotNil
				ifTrue: [
					aStream nextPutAll: (aBoolean
						ifTrue: [ self class encode: segment ]
						ifFalse: [ self class encodePathSegment: segment ]) ] ]
		separatedBy: [ aStream nextPut: $/ ]