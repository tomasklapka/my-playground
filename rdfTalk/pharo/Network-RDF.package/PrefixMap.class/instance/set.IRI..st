as yet unclassified
set: aPrefix IRI: anIRI
        ^ self at: ((aPrefix at: aPrefix size) == ':'
		ifTrue: [ aPrefix copyFrom: 1 to: aPrefix size - 1 ]
		ifFalse: [ aPrefix ]) put: anIRI