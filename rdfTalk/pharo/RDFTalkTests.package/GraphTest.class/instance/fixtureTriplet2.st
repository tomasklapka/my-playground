as yet unclassified
fixtureTriplet2
	| subject predicate object |
	subject := environment createNamedNode: 'http://example.com/#me'.
	predicate := environment createNamedNode: (environment resolve: 'foaf:name').
	object := environment createLiteral: 'John Doe'.
	^ environment createTripleFromSubject: subject predicate: predicate object: object