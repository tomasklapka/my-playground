as yet unclassified
encodePathSegment: aString
	^ String << [ :stream |
		aString do: [ :char |
			stream
				nextPutAll: (char = $/
					ifTrue: [ char asString urlEncoded ]
					ifFalse: [ char asString ]) ] ]