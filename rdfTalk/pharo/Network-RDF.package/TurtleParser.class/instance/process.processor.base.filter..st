as yet unclassified
process: toParse processor: aProcessor base: aBase filter: aTripleFilter
	processor := aProcessor.
	aBase ifNotNil: [ base := IRI fromString: base asString ].
	filter := aTripleFilter.
	quick := true.
	^ self parseStatements: toParse