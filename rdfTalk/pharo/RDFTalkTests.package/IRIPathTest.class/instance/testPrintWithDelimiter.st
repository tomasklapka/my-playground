as yet unclassified
testPrintWithDelimiter
	| path |
	path := (IRIPath * 'plonk') / 'griffle'.
	self assert: (path printWithDelimiter: $%) equals: 'plonk%griffle'