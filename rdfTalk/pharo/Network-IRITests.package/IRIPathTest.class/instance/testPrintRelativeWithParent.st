as yet unclassified
testPrintRelativeWithParent
	| path |
	path := IRIPath parent / 'foo'.
	self assert: (path printWithDelimiter: $/) equals: '../foo'