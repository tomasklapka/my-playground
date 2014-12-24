testing
node: aNode equalsNode: anotherNode
	| type |
	type := RDFNode type: aNode.
	(type ~= (RDFNode type: anotherNode))
		ifTrue: [ ^ false ].
	((type = 'IRI') or: (type = 'BlankNode'))
		ifTrue: [ ^ (aNode toString = anotherNode toString) ].
	(type = 'PlainLiteral')
		ifTrue: [ ^ ((aNode language = anotherNode language) and:
		             (aNode nominalValue = anotherNode nominalValue)) ].
	(type = 'TypedLiteral')
		ifTrue: [ ^ ((aNode type = anotherNode type) and:
					 (aNode nominalValue = anotherNode nominalValue)) ].
	^ (aNode toNT = anotherNode toNT)