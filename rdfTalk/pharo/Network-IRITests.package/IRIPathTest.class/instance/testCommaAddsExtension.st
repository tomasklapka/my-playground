as yet unclassified
testCommaAddsExtension
	| path result |
	path := IRIPath * 'plonk' .
	result := path, 'griffle'.
	self assert: result basename equals: 'plonk.griffle'