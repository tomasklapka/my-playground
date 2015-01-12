as yet unclassified
testWithExtentionAddsExtension
	| path result |
	path := IRIPath * 'plonk'.
	result := path withExtension: 'griffle'.
	self assert: result basename equals: 'plonk.griffle'