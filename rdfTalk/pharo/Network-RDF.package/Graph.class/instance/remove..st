adding/removing
remove: aTriple
	| subject predicate object |
	subject := aTriple subject nominalValue.
	predicate := aTriple predicate nominalValue.
	object := aTriple object nominalValue.
	(subject isKindOf: IRI) ifTrue: [ subject := subject asString ].
	(predicate isKindOf: IRI) ifTrue: [ predicate := predicate asString ].
	(object isKindOf: IRI) ifTrue: [ object := object asString ].
	self deleteIndex: indexOPS a: object b: predicate c: subject.
	self deleteIndex: indexPSO a: predicate b: subject c: object.
	self deleteIndex: indexSOP a: subject b: object c: predicate.
	length := length - 1.
	^ self
