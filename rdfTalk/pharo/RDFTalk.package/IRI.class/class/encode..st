as yet unclassified
encode: aString
	^ aString urlEncoded
"	^ String << [ :stream |
		aString do: [ :char |
			(self isEncodableCharacter: char) ifTrue: [ stream nextPutAll: char asString urlEncoded ] ifFalse: [ stream nextPut: char ] ] ]"