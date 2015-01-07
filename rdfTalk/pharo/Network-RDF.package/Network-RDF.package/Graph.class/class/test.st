as yet unclassified
test
	| iriMe iriProperty iriObject subject predicate object graph triple |
	iriMe := IRI fromString: 'http://example.com/#me'.
	iriProperty := IRI fromString: 'http://example.com/#property'.
	iriObject := IRI fromString: 'http://example.com/#object'.
	subject := NamedNode new value: iriMe.
	predicate := NamedNode new value: iriProperty.
	object := NamedNode new value: iriObject.
	graph := Graph new.
	triple := Triple subject: subject predicate: predicate object: object.
	graph add: triple.
	graph inspect.
	Transcript show: graph toString; cr