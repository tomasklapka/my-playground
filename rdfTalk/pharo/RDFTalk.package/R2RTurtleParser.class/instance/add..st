as yet unclassified
add: aTriple
	filter ifNotNil: [ (filter value: aTriple) ifFalse: [ ^ nil ]].
	quick
		ifTrue: [ processor value: aTriple ]
		ifFalse: [ graph add: aTriple ]