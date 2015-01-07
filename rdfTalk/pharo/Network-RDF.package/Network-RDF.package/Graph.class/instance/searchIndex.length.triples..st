private
searchIndex: anIndex length: aLength triples: aTriples
	(aLength > 0)
			ifTrue: [ anIndex valuesDo: [ :value | self searchIndex: value length: aLength-1 triples: aTriples ] ]
			ifFalse: [ aTriples add: anIndex ].
	^ aTriples