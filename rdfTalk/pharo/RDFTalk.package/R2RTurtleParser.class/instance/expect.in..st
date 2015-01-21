as yet unclassified
expect: aToken in: aString
	(aString copyFrom: 1 to: aToken size) = aToken
		ifFalse: [ Error signal: 'Expected token: ', aToken, ' at ', (aString copyFrom: 1 to: (aString size > 50 ifTrue: [ 50 ] ifFalse: [ aString size ])) ]