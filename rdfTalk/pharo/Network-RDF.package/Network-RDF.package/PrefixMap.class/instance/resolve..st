as yet unclassified
resolve: aCURIE
	| index iri |
	index := aCURIE findString: ':'.
	index == 0 ifTrue: [ ^ nil ].
	iri := self get: (aCURIE copyFrom: 1 to: index-1).
	iri ifNil: [ ^ nil ].
	^ IRI fromString: iri asString, (aCURIE copyFrom: index+1 to: aCURIE size).
