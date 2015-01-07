as yet unclassified
get: aPrefix
        ^ self at: ((aPrefix at: aPrefix size) == ':'
		ifTrue: [ aPrefix copyFrom: 1 to: aPrefix size - 1 ]
		ifFalse: [ aPrefix ])
