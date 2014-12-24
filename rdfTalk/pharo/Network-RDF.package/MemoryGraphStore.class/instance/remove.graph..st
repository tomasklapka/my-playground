as yet unclassified
remove: anIRI graph: aGraph
	graphs at: anIRI ifPresent: [ graphs at: anIRI put: ((graphs at: anIRI) difference: aGraph)] ifAbsent: [ ].
	^ self
