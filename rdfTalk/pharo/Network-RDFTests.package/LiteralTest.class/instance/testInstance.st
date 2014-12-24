as yet unclassified
testInstance
	| literal |
	literal := RDFEnvironment new createLiteral: 'test'.
	self assert: (literal isKindOf: Literal) equals: true.
	self assert: literal value equals: 'test'.
	self assert: literal language equals: nil.
	self assert: literal dataType equals: nil.