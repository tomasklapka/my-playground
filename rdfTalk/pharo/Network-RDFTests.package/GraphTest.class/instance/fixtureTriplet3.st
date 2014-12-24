as yet unclassified
fixtureTriplet3
	| subject predicate object |
	subject := environment createNamedNode: 'http://example.com/#me'.
	predicate := environment createNamedNode: (environment resolve: 'foaf:knows').
	object := environment createNamedNode: 'http://example.com/#jack'.
	^ environment createTripleFromSubject: subject predicate: predicate object: object