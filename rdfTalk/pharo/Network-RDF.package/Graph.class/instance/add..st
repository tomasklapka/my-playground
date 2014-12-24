adding/removing
add: aTriple
	| subject predicate object |
	(aTriple isKindOf: Graph) ifTrue: [
		aTriple do: [ :t | self add: t ].
		^ self
	].
	subject := aTriple subject nominalValue.
	predicate := aTriple predicate nominalValue.
	object := aTriple object nominalValue.
	(subject isKindOf: IRI) ifTrue: [ subject := subject asString ].
	(predicate isKindOf: IRI) ifTrue: [ predicate := predicate asString ].
	(object isKindOf: IRI) ifTrue: [ object := object asString ].
	self insertIndex: indexOPS a: object b: predicate c: subject triple: aTriple.
	self insertIndex: indexPSO a: predicate b: subject c: object triple: aTriple.
	self insertIndex: indexSOP a: subject b: object c: predicate triple: aTriple.
	length := length + 1.
	^ self