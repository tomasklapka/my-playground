as yet unclassified
decode: aString
	^ aString
		copyWithRegex: self decodeRegex
		matchesTranslatedUsing: [ :each |
			(self decodeReserved includes: each)
				ifTrue: [ each ]
				ifFalse: [ each urlDecoded ] ]