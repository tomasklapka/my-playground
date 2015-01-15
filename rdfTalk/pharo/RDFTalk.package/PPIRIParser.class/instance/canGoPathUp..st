grammar
canGoPathUp: anIRI
	anIRI segments ifNil: [ ^ false ].
	anIRI segments size = 0 ifTrue: [ ^ false ].
	anIRI lastPathSegment = '..' ifTrue: [ ^ false ].
	^ true