as yet unclassified
testSlash
	| path actual |
	path := IRIPath * 'plonk'.
	actual := path / 'griffle'.
	self assert: actual class equals: path class.
	self assert: (actual printWithDelimiter: $/) equals: 'plonk/griffle'