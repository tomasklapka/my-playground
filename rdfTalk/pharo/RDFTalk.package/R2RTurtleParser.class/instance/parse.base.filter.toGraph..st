as yet unclassified
parse: toParse base: aBase filter: aTripleFilter toGraph: aGraph
	aGraph
		ifNotNil: [ graph := aGraph ]
		ifNil: [ graph := environment createGraph ].
	aBase ifNotNil: [ base := IRI fromString: aBase asString ].
	filter := aTripleFilter.
	quick := false.
	self parseStatements: toParse.
	^ graph