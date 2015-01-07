as yet unclassified
testInstanceWithDataType
	| literal |
	literal := RDFEnvironment new createLiteral: 'true' dataType: 'boolean'.
	self assert: (literal isKindOf: Literal) equals: true.
	self assert: literal value equals: 'true'.
	self assert: literal language equals: nil.
	self assert: literal dataType equals: 'boolean'