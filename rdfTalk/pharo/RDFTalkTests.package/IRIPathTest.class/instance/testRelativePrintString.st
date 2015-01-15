as yet unclassified
testRelativePrintString
	| path actual |
	path := IRIPath * 'plonk' / 'griffle'.
	actual := path printString.
	self assert: actual equals: 'IRIPath * ''plonk'' / ''griffle'''