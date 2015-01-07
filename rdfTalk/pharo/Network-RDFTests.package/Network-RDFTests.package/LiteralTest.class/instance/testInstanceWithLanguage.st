as yet unclassified
testInstanceWithLanguage
	| literal |
	literal := RDFEnvironment new createLiteral: 'test' language: '@en'.
	self assert: (literal isKindOf: Literal) equals: true.
	self assert: literal value equals: 'test'.
	self assert: literal language equals: '@en'.
	self assert: literal dataType equals: nil.