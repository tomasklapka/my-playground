testing
type: aNode
	(aNode respondsTo: #type)
		ifTrue: [ ^ aNode type ].
	(aNode isKindOf: String) ifTrue: [
		((aNode copyFrom: 0 to: 2) = '_:')
			ifTrue: [ ^ 'BlankNode' ]
			ifFalse: [ ^ 'IRI' ] ].
	^ 'TypedLiteral'