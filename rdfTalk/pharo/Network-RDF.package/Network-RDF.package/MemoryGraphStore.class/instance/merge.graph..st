as yet unclassified
merge: anIRI graph: aGraph
	(graphs at: anIRI ifAbsent: [ graphs at: anIRI put: Graph new ]) addAll: aGraph.
	^ self