as yet unclassified
fixtureTriplet1
	| subject predicate object |
	subject := environment createNamedNode: 'http://example.com/#me'.
	predicate := environment createNamedNode: (environment resolve: 'rdf:type').
	object := environment createNamedNode: (environment resolve: 'foaf:Person').
	^ environment createTripleFromSubject: subject predicate: predicate object: object