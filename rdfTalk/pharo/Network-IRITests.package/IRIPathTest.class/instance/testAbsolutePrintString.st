as yet unclassified
testAbsolutePrintString
	| path actual |
	path := IRIPath / 'plonk' / 'griffle'.
	actual := path printString.
	self assert: actual equals: 'IRIPath / ''plonk'' / ''griffle'''