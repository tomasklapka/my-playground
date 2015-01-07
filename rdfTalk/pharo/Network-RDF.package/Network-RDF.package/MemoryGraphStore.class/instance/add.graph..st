as yet unclassified
add: anIRI graph: aGraph
	graphs at: anIRI put: (Graph new addAll: aGraph).
	^ self