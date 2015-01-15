as yet unclassified
testWithExtentionReplacesExtension
	| path result |
	path := IRIPath * 'plonk.griffle'.
	result := path withExtension: 'griffle'.
	self assert: result basename equals: 'plonk.griffle'