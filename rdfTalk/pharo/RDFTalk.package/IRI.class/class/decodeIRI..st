as yet unclassified
decodeIRI: aString
	^ aString
		copyWithRegex: self decodeRegex
		matchesTranslatedUsing: [ :a |
			(self decodeReserved	includes: a)
				ifTrue: [ a ]
				ifFalse: [ a urlDecoded ] ]